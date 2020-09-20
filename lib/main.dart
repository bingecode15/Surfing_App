import 'package:flutter/material.dart';
import 'package:surfing_app/Screens/LandingScreen/landing_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Surfing App",
      home: LandingScreen(),
    );
  }
}
