import 'package:flutter/material.dart';
import 'package:surfing_app/Screens/ProfileScreen/components/body.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Body(size: size),
      ),
    );
  }
}
