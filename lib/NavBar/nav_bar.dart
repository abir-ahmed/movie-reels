import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return const DesktopNavBar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return
            //const TabletNavBar();
            const DesktopNavBar(); // For now, we will use Responsive UI Look of Desktop
      } else if (constraints.maxWidth > 0 && constraints.maxWidth < 800) {
        return const MobileNavBar();
      } else {
        return const UnknownDeviceNavBar();
      }
    });
  }
}

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Work Station App',
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
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
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

class TabletNavBar extends StatelessWidget {
  const TabletNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      child: Column(
        children: [
          Text(
            'Work Station App',
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
              ],
            ),
          )
        ],
      ),
    );
  }
}

class UnknownDeviceNavBar extends StatelessWidget {
  const UnknownDeviceNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
