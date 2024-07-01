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
  bool ItemLiked = false;
  void LikeItem() {
    setState(() {
      ItemLiked = !ItemLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.42,
      height: MediaQuery.of(context).size.height * 0.38,
      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Stack(
              children: [
                Container(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(59),
                  child: Image.asset(
                    widget
                        .ImageUrl, // Replace with Image.asset if using local assets
                    // width: 157, // Adjust width to match Container's width
                    // height: MediaQuery.of(context).size.height * 0.525,
                    // Adjust height to match Container's height
                    fit: BoxFit.cover, // Use BoxFit.cover to fill the container
                  ),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height * 0.006,
                    left: MediaQuery.of(context).size.width * 0.34,
                    child: InkWell(
                      onTap: LikeItem,
                      child: Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        padding: EdgeInsets.all(7),
                        child: Image.asset(
                          "assets/DesignImages/${!ItemLiked ? "NonSelectedIcons/Like.png" : "SelectedIcons/RedLike.png"}",
                        ),
                      ),
                    )),
                widget.haveAddToCart
                    ? Positioned(
                        bottom: MediaQuery.of(context).size.height * 0.01,
                        left: MediaQuery.of(context).size.width * 0.11,
                        child: Container(
                          height: 35,
                          width: 81,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 0.4)),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(12, 10, 12, 10),
                                child: Text("ADD",
                                    style: GoogleFonts.beVietnamPro(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    )),
                              ),
                              Container(
                                height: 28,
                                width: 26,
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 199, 54, 1),
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(width: 0.4)),
                                child: Image.asset(
                                  "assets/DesignImages/ShopIcon.png",
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
