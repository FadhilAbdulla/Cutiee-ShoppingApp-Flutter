import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewArivalComponent extends StatefulWidget {
  const NewArivalComponent(
      {super.key,
      required this.ImageUrl,
      required this.ItemName,
      required this.Price,
      required this.haveAddToCart});

  final String ImageUrl;
  final String ItemName;
  final String Price;
  final bool haveAddToCart;
  @override
  State<NewArivalComponent> createState() => _NewArivalComponentState();
}

class _NewArivalComponentState extends State<NewArivalComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 157,
      height: 268,
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 218,
            width: 157,
            child: Stack(
              children: [
                Container(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(59),
                  child: Image.asset(
                    widget
                        .ImageUrl, // Replace with Image.asset if using local assets
                    width: 157, // Adjust width to match Container's width
                    height: 218, // Adjust height to match Container's height
                    fit: BoxFit.cover, // Use BoxFit.cover to fill the container
                  ),
                ),
                Positioned(
                    top: 7,
                    left: 126,
                    child: Image.asset(
                      "assets/DesignImages/RoundedLikeIcon.png",
                      height: 28,
                      width: 28,
                    )),
                widget.haveAddToCart
                    ? Positioned(
                        top: 175,
                        left: 38,
                        child: Container(
                          height: 35,
                          width: 81,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 0.4)),
                          child: Row(
                            children: [
                              Text("ADD",
                                  style: GoogleFonts.beVietnamPro(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  )),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 199, 54, 1),
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(width: 0.4)),
                                child: Image.asset(
                                  "assets/DesignImages/ShopIcon.png",
                                  height: 28,
                                  width: 28,
                                ),
                              )
                            ],
                          ),
                        ))
                    : Container(),
              ],
            ),
          ),
          Text(
            widget.ItemName,
            style: GoogleFonts.beVietnamPro(
              textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          Text(
            widget.Price,
            style: GoogleFonts.beVietnamPro(
              textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
