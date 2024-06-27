import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Components/CustomNavigationBar.dart';
import '../Components/DefaultHeader.dart';
import '../Components/NewArivalComponent.dart';
import '../Components/HeaderComponent.dart';
import 'dart:ui';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map> HeaderImages = [
    {"Image": "assets/SampleImages/HeaderImage1.png", "Name": "Cute Lamp"},
    {"Image": "assets/SampleImages/HeaderImage1.png", "Name": "Cute Lamp"}
  ];

  final List<Map> CategoryImages = [
    {"Image": "assets/SampleImages/Category1.png", "Name": "Lights"},
    {"Image": "assets/SampleImages/Category2.png", "Name": "Holder"},
    {"Image": "assets/SampleImages/Category4.png", "Name": "Storage"},
    {"Image": "assets/SampleImages/Category1.png", "Name": "Cups"},
    {"Image": "assets/SampleImages/Category2.png", "Name": "Dolls"},
    {"Image": "assets/SampleImages/Category4.png", "Name": "Storage"},
    {"Image": "assets/SampleImages/Category2.png", "Name": "Cups"},
    {"Image": "assets/SampleImages/Category1.png", "Name": "Dolls"},
  ];
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
      "Name": "Cute Mobile ",
      "Price": "Rs.800"
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
          Positioned(
              left: -152,
              top: -243,
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: Container(
                    height: 614,
                    width: 614,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              // Color.fromRGBO(255, 198, 54, 0.57),
                              Color.fromRGBO(254, 105, 92, 1),
                              Colors.white,
                            ]),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromRGBO(255, 94, 94, 0.29)
                                .withOpacity(0.10),
                            spreadRadius: 100,
                            blurRadius: 20,
                            offset: Offset(0, 12), // changes position of shadow
                          ),
                        ],
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(255, 94, 94, 0.29)),
                  ))),
          Positioned.fill(
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(
                  0, 120, 0, 80), // Ensure padding for bottom navigation bar
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: HeaderImages.map((data) {
                            return HeaderComponent(
                                ImageUrl: data["Image"],
                                ItemName: data["Name"]);
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Categories",
                      style: GoogleFonts.manjari(
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: CategoryImages.map((data) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 11),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(28),
                                    child: Image.asset(
                                      data[
                                          "Image"], // Replace with Image.asset if using local assets
                                      width:
                                          65, // Adjust width to match Container's width
                                      height:
                                          71, // Adjust height to match Container's height
                                      fit: BoxFit
                                          .cover, // Use BoxFit.cover to fill the container
                                    ),
                                  ),
                                  Text(
                                    data["Name"],
                                    style: GoogleFonts.beVietnamPro(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "New Arrivals",
                      style: GoogleFonts.manjari(
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: ArrivalsImages.map((data) {
                            return NewArivalComponent(
                                ImageUrl: data["Image"],
                                ItemName: data["Name"],
                                Price: data["Price"],
                                haveAddToCart: false);
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              child: CustomNavigationBar(),
            ),
          ),
        ],
      ),
    );
  }
}
