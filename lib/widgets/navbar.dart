import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => _mobileNavBar(),
      desktop: (_) => _deskTopNavBar(),
    );
  }

  Widget _mobileNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          navLogo(),
        ],
      ),
    );
  }

  Widget _deskTopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton("Features"),
              navButton("About us"),
              navButton("Pricing"),
              navButton("Feedback"),
            ],
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton(
              style: borderedButtonStyle,
              onPressed: () {},
              child: Text(
                "Request a Demo",
                style: TextStyle(color: AppColors.primary, fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 110,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/logo.png'))),
    );
  }
}
