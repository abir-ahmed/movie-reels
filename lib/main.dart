import 'package:flutter/material.dart';
import 'package:movie_reels_app/LandingPage/landingPage.dart';
import 'package:movie_reels_app/NavgationTopBar/navigationTopBar.dart';
import 'package:movie_reels_app/searchMovies.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie Reels App',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      // Start the app with the "/" named route. In this case, the app starts
      // on the MovieReelApp widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the MovieReelApp widget.
        '/': (context) => const MovieReelApp(),
        // When navigating to the "/second" route, build the SearchMovieScreen widget.
        '/search': (context) => SearchMovieScreen(),
      },
      // Warning: When using initialRoute, don’t define a home property.
      //home: const MovieReelApp(),
    );
  }
}

class MovieReelApp extends StatelessWidget {
  const MovieReelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.purple, Colors.red])),
          child: const SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                NavigationTopBar(),
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                    child: LandingPage()),
              ],
            ),
          )),
    );
  }
}
