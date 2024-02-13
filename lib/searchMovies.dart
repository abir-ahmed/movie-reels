import 'package:flutter/material.dart';

class SearchMovieScreen extends StatelessWidget {
  SearchMovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Movie'),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.pink,
          child: Text(
            'Go back',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            // Navigate to the home screen when tapped.
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
