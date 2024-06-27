import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderComponent extends StatefulWidget {
  const HeaderComponent({
    super.key,
    required this.ImageUrl,
    required this.ItemName,
  });

  final String ImageUrl;
  final String ItemName;
  @override
  State<HeaderComponent> createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 294,
      margin: const EdgeInsets.only(right: 13),
      child: Stack(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(39),
              child: Image.asset(
                widget
                    .ImageUrl, // Replace with Image.asset if using local assets
                width: 294, // Adjust width to match Container's width
                height: 270, // Adjust height to match Container's height
                fit: BoxFit.cover, // Use BoxFit.cover to fill the container
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                  width: 294,
                  height: 84,
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(39.0),
                      bottomRight: Radius.circular(39.0),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          // Color.fromRGBO(255, 198, 54, 0.57),
                          Color.fromRGBO(255, 255, 255, 0.4),
                          Color.fromRGBO(69, 68, 68, 0.4),
                        ]),
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                            ),
                            Positioned(
                              top: 2,
                              left: 1.6,
                              child: Text(widget.ItemName,
                                  style: GoogleFonts.manjari(
                                    textStyle: TextStyle(
                                        fontSize: 28,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -2),
                                  )),
                            ),
                            Positioned(
                              child: Text(widget.ItemName,
                                  style: GoogleFonts.manjari(
                                    textStyle: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -2),
                                  )),
                            ),
                          ],
                        ),
                        Container(
                          height: 26,
                          width: 82,
                          padding: EdgeInsets.only(top: 5),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 199, 54, 1),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromRGBO(0, 0, 0, 1)
                                      .withOpacity(1),
                                  spreadRadius: 0,
                                  blurRadius: 0,
                                  offset: Offset(
                                      2, 2), // changes position of shadow
                                ),
                              ],
                              border:
                                  Border.all(width: 0.4, color: Colors.black)),
                          child: Center(
                            child: Text("Shop Now",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.manjari(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                  )))
        ],
      ),
    );
  }
}
