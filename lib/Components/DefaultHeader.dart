import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultHeader extends StatefulWidget {
  const DefaultHeader({super.key});
  @override
  State<DefaultHeader> createState() => _DefaultHeaderState();
}

class _DefaultHeaderState extends State<DefaultHeader> {
  void NavigateToHome() {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: NavigateToHome,
            child: Stack(
              children: <Widget>[
                Container(
                  height: 57,
                  width: 120,
                ),
                Positioned(
                  top: 3,
                  left: 2.8,
                  child: Text("Cutiee",
                      style: GoogleFonts.lilitaOne(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 41,
                            fontWeight: FontWeight.w400,
                            fontFeatures: [],
                            letterSpacing: -3),
                      )),
                ),
                // // Stroked text as border.

                Positioned(
                    left: 1,
                    child: Text("Cutiee",
                        style: GoogleFonts.lilitaOne(
                          textStyle: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                            fontFeatures: [],
                            letterSpacing: -3,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 2
                              ..color = Colors.black,
                          ),
                        ))),
                Positioned(
                  left: 1,
                  child: Text("Cutiee",
                      style: GoogleFonts.lilitaOne(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                            fontFeatures: [],
                            letterSpacing: -3),
                      )),
                )
                // Solid text as fill.
              ],
            ),
          ),
          Container(
            width: 88,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/DesignImages/SearchIcon.png',
                  width: 24,
                  height: 24,
                ),
                Image.asset(
                  'assets/DesignImages/ShopIcon.png',
                  width: 24,
                  height: 24,
                ),
                Image.asset(
                  'assets/DesignImages/SettingsIcon.png',
                  width: 24,
                  height: 24,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
