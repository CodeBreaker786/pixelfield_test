import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixelfield_test/blocs/collection_bloc/collection_bloc.dart';
import 'package:pixelfield_test/widgets/base_screen.dart';

class ItemDetailScreen extends StatefulWidget {
  final int itemId;
  const ItemDetailScreen({super.key, required this.itemId});

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    context.read<CollectionBloc>().add(LoadItemDetails(widget.itemId));
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      child: BlocBuilder<CollectionBloc, CollectionState>(
        builder: (context, state) {
          if (state is LoadItemDetailSuccess) {
            return ListView(
              children: [
                SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        state.collectionDetails.category,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      IconButton.filled(
                        padding: const EdgeInsets.all(8),
                        icon: const Icon(Icons.close, color: Colors.white),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ExpansionTile(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    collapsedBackgroundColor:
                        Theme.of(context).colorScheme.primary,
                    leading: Icon(
                      Icons.info_outline,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    title: Text(
                     state.collectionDetails.distillery,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    iconColor: Theme.of(context).colorScheme.secondary,
                    collapsedIconColor: Theme.of(context).colorScheme.secondary,
                    children: <Widget>[
                      ListTile(
                        title:   Text(
                          state.collectionDetails.flavorProfileNose??'',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                      ListTile(
                        title:   Text(
                           state.collectionDetails.flavorProfilePalate??'',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 36),
                Image.asset(
                 state.collectionDetails.imageUrl??'',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bottle 135/184',
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  color: Colors.white,
                                ),
                      ),
                      const SizedBox(height: 5),
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.headlineLarge,
                          children: [
                            TextSpan(text: 'Talisker '),
                            TextSpan(
                              text: '18 Year old\n',
                              style: TextStyle(color: Colors.amber),
                            ),
                            TextSpan(
                              text: '#${state.collectionDetails.releaseYear}',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 36),
                      Column(
                        children: [
                          Container(
                            height: 36,
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: TabBar(
                              controller: _tabController,
                              indicator: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              indicatorSize: TabBarIndicatorSize.tab,
                              labelColor: Theme.of(context).colorScheme.primary,
                              unselectedLabelColor: Colors.white60,
                              labelPadding: EdgeInsets.zero,
                              tabs: [
                                Tab(child: Text('Details')),
                                Tab(child: Text('Tasting notes')),
                                Tab(child: Text('History')),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 400, // Adjust the height as needed
                        child: TabBarView(
                          controller: _tabController,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            ListView(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                ...[
                                  "Distillery",
                                  "Region",
                                  "Country",
                                  "Type",
                                  "Age statement",
                                  "Filled",
                                  "Bottled",
                                  "Cask number",
                                  "ABV",
                                  "Size",
                                  "Finish"
                                ].map((detail) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(detail,
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16)),
                                          const Text('Text',
                                              style: TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 16)),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                            Center(
                                child: Text('Tasting notes content',
                                    style: TextStyle(color: Colors.white))),
                            Center(
                                child: Text('History content',
                                    style: TextStyle(color: Colors.white))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.add,
                            size: 30,
                            color: Theme.of(context).colorScheme.primary),
                        Text(' Add to my collection',
                            style: Theme.of(context).textTheme.labelLarge),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 60),
              ],
            );
          }
          if (state is LoadItemDetailError) {
            return Center(
              child: Text(state.message),
            );
          }
          return const Center(
            child: CircularProgressIndicator(color: Colors.white),
          );
        },
      ),
    );
  }
}
