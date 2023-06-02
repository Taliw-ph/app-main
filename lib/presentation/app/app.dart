import 'package:flutter/material.dart';
import 'package:flutter_movies_app/main.dart';
import 'package:flutter_movies_app/presentation/list/movies_list_screen.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  final InitialData data;

  const App({required this.data});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: data.providers,
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        debugShowCheckedModeBanner: false,
        title: 'Movies App',
        home: const MoviesListScreen(),
      ),
    );
  }
}
