import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void NavigateToNextPage() {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white),
            ),
            Positioned(
                left: 135,
                child: Container(
                  height: 390,
                  width: 390,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.centerLeft,
                          colors: [
                            // Color.fromRGBO(255, 198, 54, 0.57),
                            Color.fromRGBO(255, 94, 94, 0.29),
                            Colors.white,
                          ]),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromRGBO(255, 94, 94, 0.29)
                              .withOpacity(0.10),
                          spreadRadius: 300,
                          blurRadius: 500,
                          offset: Offset(0, 12), // changes position of shadow
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(255, 94, 94, 0.29)),
                )),
            Positioned(
                left: -99,
                top: -146,
                child: Container(
                  height: 390,
                  width: 390,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(255, 198, 54, 20),
                            Colors.white
                          ]),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromRGBO(255, 198, 54, 0.57)
                              .withOpacity(0.30),
                          spreadRadius: 100,
                          blurRadius: 200,
                          offset: Offset(0, 12), // changes position of shadow
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(255, 198, 54, 0.57)),
                )),
            Positioned(
                child: Container(
              height: 390,
              width: 390,
            )),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
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
                                  fontSize: 49,
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
                                  fontSize: 48,
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
                                  fontSize: 48,
                                  fontWeight: FontWeight.w400,
                                  fontFeatures: [],
                                  letterSpacing: -3),
                            )),
                      )
                      // Solid text as fill.
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text(
                    "Do you enjoy adorning your home with adorable decorations?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.manjari(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 256,
                  child: Text(
                    "Discover a collection of all the charming products in one place, and indulge in the joy of shopping!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.manjari(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    // margin: EdgeInsets.only(bo),
                    child: Stack(
                      children: [
                        Image.asset('assets/DesignImages/HomeAvatarImage.png'),
                        Positioned(
                          bottom: 20,
                          right: 20,
                          left: 20,
                          child: InkWell(
                            onTap: NavigateToNextPage,
                            child: Image.asset(
                                'assets/DesignImages/HomeButtonImage.png'),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
