import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  List<Widget> pageChildren(double width) {
    return <Widget>[
      SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Watch Movie Review or Trailer",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "This project is a starting point to develop a responsive flutter app. It will support Web Browser, Android and iOS platform. This application is for audience who loves to watch movies Reviews. We'll also provide any new or upcomming movie trailers.",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            MaterialButton(
              color: Colors.pink,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: Image.asset(
          "assets/images/poster.png",
          width: width,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        // For desktop or laptop UI
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // For desktop we want to consider the maximum width and divide it by 2 to give each row element the same space
          children: pageChildren(constraints.biggest.width / 2),
        );
      } else {
        // For mobile UI
        return Column(
          // For mobile device we want to take the full width to display column item as it is arranged vertically
          children: pageChildren(constraints.biggest.width),
        );
      }
    });
  }
}
