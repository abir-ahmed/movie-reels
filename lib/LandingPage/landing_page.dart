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
              "Web\nDevelopers",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "We have taken each and every project handed over to us as a challenge, which has helped us achieve a high project success rate.",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            MaterialButton(
              color: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                child: Text('Our Packages'),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: Image.asset(
          "assets/images/lp_image.png",
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
