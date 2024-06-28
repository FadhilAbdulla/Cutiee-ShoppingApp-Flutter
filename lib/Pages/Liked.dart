import 'package:flutter/material.dart';

class Liked extends StatefulWidget {
  const Liked({super.key});
  @override
  State<Liked> createState() => _LikedState();
}

class _LikedState extends State<Liked> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0, 120, 0, 80),
        child: Center(child: Text("Liked Items")));
  }
}
