import 'package:flutter/material.dart';

typedef StringCallback = void Function(String);

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar(
      {super.key, required this.onIconTap, required this.selectedItem});

  final StringCallback onIconTap;
  final String selectedItem;

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
                left: MediaQuery.of(context).size.width * 0.11,
                bottom: 22,
                child: InkWell(
                  onTap: () {
                    widget.onIconTap("H");
                  },
                  child: Image.asset(
                    "assets/DesignImages/${widget.selectedItem == "H" ? "SelectedIcons" : "NonSelectedIcons"}/Home.png",
                    height: 24,
                    width: 24,
                  ),
                )),
            Positioned(
                left: MediaQuery.of(context).size.width * 0.285,
                bottom: 22,
                child: InkWell(
                  onTap: () {
                    widget.onIconTap("N");
                  },
                  child: Image.asset(
                    "assets/DesignImages/${widget.selectedItem == "N" ? "SelectedIcons" : "NonSelectedIcons"}/Notification.png",
                    height: 24,
                    width: 24,
                  ),
                )),
            Positioned(
                left: MediaQuery.of(context).size.width * 0.42,
                top: 4.5,
                child: InkWell(
                  onTap: () {
                    widget.onIconTap("S");
                  },
                  child: Image.asset(
                    "assets/DesignImages/CenterIcon.png",
                    height: 66,
                    width: 66,
                  ),
                )),
            Positioned(
                left: MediaQuery.of(context).size.width * 0.66,
                bottom: 22,
                child: InkWell(
                  onTap: () {
                    widget.onIconTap("L");
                  },
                  child: Image.asset(
                    "assets/DesignImages/${widget.selectedItem == "L" ? "SelectedIcons" : "NonSelectedIcons"}/Like.png",
                    height: 24,
                    width: 24,
                  ),
                )),
            Positioned(
                left: MediaQuery.of(context).size.width * 0.82,
                bottom: 22,
                child: InkWell(
                  onTap: () {
                    widget.onIconTap("P");
                  },
                  child: Image.asset(
                    "assets/DesignImages/${widget.selectedItem == "P" ? "SelectedIcons" : "NonSelectedIcons"}/Profile.png",
                    height: 24,
                    width: 24,
                  ),
                )),
          ],
        ));
  }
}
