import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixelfield_test/blocs/app_bloc/app_bloc.dart';
import 'package:pixelfield_test/blocs/collection_bloc/collection_bloc.dart';
import 'package:pixelfield_test/screens/collection_screen.dart';
import 'package:pixelfield_test/screens/home_screen.dart';
import 'package:pixelfield_test/screens/splash_screen.dart';
import 'package:pixelfield_test/screens/welcome_screen.dart';
import 'core/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppBloc()..add(OnAppStarted()),
        ),
        BlocProvider(create: (context) => CollectionBloc())
      ],
      child: MaterialApp(
          title: 'My Flutter App',
          theme: AppTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          home: BlocBuilder<AppBloc, AppState>(
            builder: (context, state) {
              if (state is AppInitial) {
                return SplasScreen();
              } else if (state is AuthenticationUnauthenticated) {
                return WelcomeScreen();
              } else if (state is AuthenticationAuthenticated) {
                return HomeScreen();
              } else {
                return Container();
              }
            },
          )),
    );
  }
}
