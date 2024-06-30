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
        height: MediaQuery.of(context).size.height * 0.12,
        alignment: Alignment.bottomCenter,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.105,
            ),
            Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/DesignImages/BottomNavigationImage.png',
                  width: MediaQuery.of(context).size.width,
                )),
            Positioned(
                left: MediaQuery.of(context).size.width * 0.11,
                bottom: MediaQuery.of(context).size.height * 0.025,
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
                bottom: MediaQuery.of(context).size.height * 0.025,
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
                top: 0,
                child: InkWell(
                  onTap: () {
                    widget.onIconTap("S");
                  },
                  child: Image.asset(
                    "assets/DesignImages/CenterIcon.png",
                    height: MediaQuery.of(context).size.width * 0.16,
                    width: MediaQuery.of(context).size.width * 0.16,
                  ),
                )),
            Positioned(
                left: MediaQuery.of(context).size.width * 0.66,
                bottom: MediaQuery.of(context).size.height * 0.025,
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
                bottom: MediaQuery.of(context).size.height * 0.025,
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
