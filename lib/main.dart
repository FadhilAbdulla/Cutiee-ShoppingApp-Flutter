import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';
import 'Pages/Splashscreen.dart';
import 'Pages/NewArrivals.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => Splashscreen(),
        '/home': (context) => HomePage(),
        '/newarrivals': (context) => NewArrivals()
      },
    );
  }
}
