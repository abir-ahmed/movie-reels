import 'package:flutter/material.dart';
import 'package:movie_reels_app/LandingPage/landing_page.dart';
import 'package:movie_reels_app/NavgationTopBar/navigation_top_bar.dart';

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
      home: const MovieReelApp(),
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
