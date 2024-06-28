import 'package:flutter/material.dart';
import '../Components/CustomNavigationBar.dart';
import '../Components/DefaultHeader.dart';
import '../Components/HomePageBlurContainer.dart';
import 'HomePage.dart';
import 'NotificationPage.dart';
import 'Liked.dart';
import 'Profile.dart';
import 'ProductPage.dart';
import 'ScannerPage.dart';
import '../Components/AddToCartButton.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  String _SelectedPage = "H";

  void LaunchProductPage() {
    setState(() {
      _SelectedPage = "PRODUCT";
    });
  }

  late Map NavigationMap;
  @override
  void initState() {
    super.initState();
    NavigationMap = {
      "H": HomePage(NavigateToProductPage: LaunchProductPage),
      "N": NotificationPage(),
      "S": ScannerPage(),
      "L": Liked(),
      "P": Profile(),
      "PRODUCT": ProductPage()
    };
  }

  void handleIconTap(String value) {
    setState(() {
      _SelectedPage = value;
    });
    // print("Icon tapped with value: $value");
  }

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
            child: NavigationMap[_SelectedPage] ?? Container(),
          ),
          if (_SelectedPage == "PRODUCT")
            Positioned(
              bottom: 110,
              left: 0,
              right: 0,
              child: ClipRRect(
                child: AddToCartButton(),
              ),
            ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              child: CustomNavigationBar(
                  onIconTap: handleIconTap, selectedItem: _SelectedPage),
            ),
          ),
        ],
      ),
    );
  }
}
