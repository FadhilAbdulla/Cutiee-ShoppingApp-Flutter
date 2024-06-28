import 'package:flutter/material.dart';

class HomePageBlurContainer extends StatefulWidget {
  const HomePageBlurContainer({super.key});
  @override
  State<HomePageBlurContainer> createState() => _HomePageBlurContainerState();
}

class _HomePageBlurContainerState extends State<HomePageBlurContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 390,
      width: 390,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              blurRadius: 210,
              spreadRadius: 1,
              color: Color.fromRGBO(255, 94, 94, 0.29))
        ],
      ),
    );
  }
}
