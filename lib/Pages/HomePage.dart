import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Components/NewArivalComponent.dart';
import '../Components/HeaderComponent.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.NavigateToProductPage});

  final VoidCallback NavigateToProductPage;
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

  void NavigateToNavigationPage() {
    Navigator.of(context).pushReplacementNamed('/newarrivals');
  }

  void NavigateToProductPage() {
    widget.NavigateToProductPage();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(0, 120, 0, 80),
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
                    return InkWell(
                      onTap: NavigateToProductPage,
                      child: HeaderComponent(
                          ImageUrl: data["Image"], ItemName: data["Name"]),
                    );
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
                    fontWeight: FontWeight.w900,
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
                              data["Image"],
                              width: 65,
                              height: 71,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            data["Name"],
                            style: GoogleFonts.beVietnamPro(
                              textStyle: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
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
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: ArrivalsImages.map((data) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 15),
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
    );
  }
}
