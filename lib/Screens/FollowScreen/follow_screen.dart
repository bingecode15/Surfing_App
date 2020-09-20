import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:surfing_app/Screens/FollowScreen/components/body.dart';

class FollowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Body(size: size),
      ),
    );
  }
}
