import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Components/DefaultHeader.dart';
import '../Components/NewArivalComponent.dart';
import '../Components/HomePageBlurContainer.dart';

class NewArrivals extends StatefulWidget {
  const NewArrivals({super.key});
  @override
  State<NewArrivals> createState() => _NewArrivalsState();
}

class _NewArrivalsState extends State<NewArrivals> {
  final List<Map> ArrivalsImages = [
    {
      "Image": "assets/SampleImages/Arival1.png",
      "Name": "Cute Book Stand",
      "Price": "Rs.200"
    },
    {
      "Image": "assets/SampleImages/Arival2.png",
      "Name": "Cute Dog Lamb",
      "Price": "Rs.400"
    },
    {
      "Image": "assets/SampleImages/Arival2.png",
      "Name": "Cute Dog Lamb",
      "Price": "Rs.400"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: DefaultHeader(),
      ),
      body: Stack(
        children: [
          Positioned(left: -152, top: -243, child: HomePageBlurContainer()),
          Positioned.fill(
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(0, 120, 0, 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New Arrivals",
                    style: GoogleFonts.manjari(
                      textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: ArrivalsImages.map((data) {
                          return Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                NewArivalComponent(
                                    ImageUrl: data["Image"],
                                    ItemName: data["Name"],
                                    Price: data["Price"],
                                    haveAddToCart: true),
                                NewArivalComponent(
                                    ImageUrl: data["Image"],
                                    ItemName: data["Name"],
                                    Price: data["Price"],
                                    haveAddToCart: true),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
