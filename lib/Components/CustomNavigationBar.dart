import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});
  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 107,
        alignment: Alignment.bottomCenter,
        child: Stack(
          children: [
            Container(
              height: 100,
            ),
            Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/DesignImages/BottomNavigationImage.png',
                  width: MediaQuery.of(context).size.width,
                )),
            Positioned(
                left: 44,
                bottom: 20,
                child: Image.asset(
                  "assets/DesignImages/HomeIcon.png",
                  height: 26,
                  width: 26,
                )),
            Positioned(
                left: 116,
                bottom: 22,
                child: Image.asset(
                  "assets/DesignImages/NotificationIcon.png",
                  height: 24,
                  width: 26,
                )),
            Positioned(
                left: 268,
                bottom: 20,
                child: Image.asset(
                  "assets/DesignImages/LikeIcon.png",
                  height: 28,
                  width: 27,
                )),
            Positioned(
                left: 340,
                bottom: 22,
                child: Image.asset(
                  "assets/DesignImages/ProfileIcon.png",
                  height: 24,
                  width: 24,
                )),
            Positioned(
                left: 173,
                top: 4.5,
                child: Image.asset(
                  "assets/DesignImages/CenterIcon.png",
                  height: 66,
                  width: 66,
                )),
          ],
        ));
  }
}
