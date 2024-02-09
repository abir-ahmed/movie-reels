import 'package:flutter/material.dart';
import 'package:work_station_web_application/LandingPage/landing_page.dart';
import 'package:work_station_web_application/NavgationTopBar/navigation_top_bar.dart';

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
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                Color.fromRGBO(195, 20, 50, 1.0),
                Color.fromRGBO(36, 11, 54, 1.0)
              ])),
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
