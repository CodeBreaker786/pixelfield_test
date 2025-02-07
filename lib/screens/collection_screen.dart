import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixelfield_test/blocs/collection_bloc/collection_bloc.dart';
import 'package:pixelfield_test/screens/item_detail_screen.dart';

class CollectionScreen extends StatefulWidget {
  const CollectionScreen({super.key});

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  @override
  void initState() {
    BlocProvider.of<CollectionBloc>(context).add(const ReloadCollection());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 84),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My collection',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                IconButton(
                  icon: Stack(
                    children: [
                      const Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                        size: 32,
                      ),
                      Positioned(
                        right: 2,
                        bottom: 2,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<CollectionBloc, CollectionState>(
              buildWhen: (previous, current) {
                return current is CollectionLoaded ||
                    current is CollectionError ||
                    current is CollectionLoading;
              },
              builder: (context, state) {
                if (state is CollectionError) {
                  return Center(
                    child: Text(state.message),
                  );
                }
                if (state is CollectionLoaded) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: RefreshIndicator(
                      onRefresh: () async {
                        await Future.delayed(const Duration(seconds: 2));
                        BlocProvider.of<CollectionBloc>(context)
                            .add(const ReloadCollection());
                      },
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.6,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        itemCount: state.collection.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation, secondaryAnimation) {
                                    return ItemDetailScreen(
                                      itemId: state.collection[index].id,
                                    );
                                  },
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    return ScaleTransition(
                                      scale: Tween<double>(
                                        begin: 0.0,
                                        end: 1.0,
                                      ).animate(
                                        CurvedAnimation(
                                          parent: animation,
                                          curve: Curves.easeInOut,
                                        ),
                                      ),
                                      child: child,
                                    );
                                  },
                                ),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Image.asset(
                                      state.collection[index].image_url,
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Text(
                                    state.collection[index].name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge
                                        ?.copyWith(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(state.collection[index].code,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                }
                return ListView(
                  children: [
                    const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
