import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int HeaderImageIndex = 0;
  void ChangeHeaderImage(id) {
    setState(() {
      HeaderImageIndex = id;
    });
  }

  final Map<dynamic, dynamic> ArrivalsImages = {
    "ImageList": [
      "assets/SampleImages/HeaderImage1.png",
      "assets/SampleImages/HeaderImage2.png",
      "assets/SampleImages/Category1.png",
      "assets/SampleImages/Category2.png",
      "assets/SampleImages/Category4.png"
    ],
    "ItemName": "Cute Lamb",
    "Currency": "AED",
    "DiscountRate": "699.20",
    "OrginalRate": "1199.40",
    "VatIncluded": true,
    "Description":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
//properties
    "Brand": "SamSung",
    "Colour": "Green",
    "Light Colour": "Whiet Light",
    "Form Factor": "Soft",
    "Height": "200 cm",
    "Width": "300 cm",
    "Weight": "10Kg"
  };

  final List properties = [
    "Brand",
    "Colour",
    "Light Colour",
    "Form Factor",
    "Height",
    "Width",
    "Weight",
    "Form Factor",
    "Height",
    "Width",
    "Weight"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(
          0, 120, 0, 80), // Ensure padding for bottom navigation bar
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(39),
                      child: Image.asset(
                        ArrivalsImages["ImageList"][HeaderImageIndex],
                        width: MediaQuery.of(context).size.width *
                            7 /
                            10, // Adjust width to match Container's width
                        height:
                            251, // Adjust height to match Container's height
                        fit: BoxFit
                            .cover, // Use BoxFit.cover to fill the container
                      ),
                    ),
                  ),
                  Container(
                    height: 251,
                    width: 65,
                    child: SingleChildScrollView(
                      child: Column(
                        children: ArrivalsImages["ImageList"]
                            .asMap()
                            .entries
                            .where((entry) => entry.key != HeaderImageIndex)
                            .map<Widget>((entry) {
                          return InkWell(
                            onTap: () {
                              ChangeHeaderImage(entry.key);
                            },
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 11),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(28),
                                child: Image.asset(
                                  entry.value,
                                  width:
                                      71, // Adjust width to match Container's width
                                  height:
                                      65, // Adjust height to match Container's height
                                  fit: BoxFit
                                      .cover, // Use BoxFit.cover to fill the container
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ArrivalsImages["ItemName"],
                    style: GoogleFonts.manjari(
                      textStyle: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 27,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ArrivalsImages["Currency"],
                              style: GoogleFonts.beVietnamPro(
                                textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                              ),
                            ),
                            Text(
                              ArrivalsImages["DiscountRate"],
                              style: GoogleFonts.beVietnamPro(
                                textStyle: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(254, 105, 92, 1)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${ArrivalsImages["Currency"]} ${ArrivalsImages["OrginalRate"]}",
                          style: GoogleFonts.beVietnamPro(
                            textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration
                                    .lineThrough, // Strikethrough effect

                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "All Prices Includes VAT.",
                    style: GoogleFonts.beVietnamPro(
                      textStyle: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    ArrivalsImages["Description"],
                    style: GoogleFonts.beVietnamPro(
                      textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Color.fromRGBO(234, 234, 234, 1),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: properties.map<Widget>((data) {
                      return Row(
                        children: [
                          Container(
                            width: 132,
                            child: Text(
                              data,
                              style: GoogleFonts.beVietnamPro(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Text(
                            ArrivalsImages[data],
                            style: GoogleFonts.beVietnamPro(
                              textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
