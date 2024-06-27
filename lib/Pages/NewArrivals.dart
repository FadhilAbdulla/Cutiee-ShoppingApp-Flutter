import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Components/CustomNavigationBar.dart';
import '../Components/DefaultHeader.dart';
import '../Components/NewArivalComponent.dart';
import '../Components/HeaderComponent.dart';
import 'dart:ui';

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
                        child: Column(
                          children: ArrivalsImages.map((data) {
                            return Container(
                              margin: EdgeInsets.only(top: 18),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
