import 'package:flutter/material.dart';

class NavigationTopBar extends StatelessWidget {
  const NavigationTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return const DesktopNavBar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        // For now, we will use Responsive UI Look of Desktop
        return const DesktopNavBar();
      } else if (constraints.maxWidth > 0 && constraints.maxWidth < 800) {
        return const MobileNavBar();
      } else {
        return const UnsupportedDevice();
      }
    });
  }
}

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Movie Reels',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              const Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                width: 30.0,
              ),
              const Text(
                'About Us',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                width: 30.0,
              ),
              const Text(
                'News',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                width: 30.0,
              ),
              const Text(
                'Portfolio',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                width: 30.0,
              ),
              MaterialButton(
                color: Colors.pink,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: const Text(
                  'Search',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  // Navigate to the screen when tapped.h
                  // Navigate to the search movie screen using a named route.
                  Navigator.pushNamed(context, '/search');
                },
              ),
              const SizedBox(
                width: 30.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Column(
        children: [
          Text(
            'Movie Reels',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  'About Us',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  'Portfolio',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30.0,
                ),
                MaterialButton(
                  color: Colors.pink,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {
                    // Navigate to the screen when tapped.h
                    // Navigate to the search movie screen using a named route.
                    Navigator.pushNamed(context, '/search');
                  },
                  child: const Text(
                    'Search',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class UnsupportedDevice extends StatelessWidget {
  const UnsupportedDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
