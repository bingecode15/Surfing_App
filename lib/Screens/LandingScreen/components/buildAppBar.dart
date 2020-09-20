import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

Padding buildAppBar(Size size) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.05, vertical: size.height * 0.01),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset("assets/icons/menu.svg"),
        Text(
          "Surfers",
          style: kAppBarTitle,
        ),
        SvgPicture.asset("assets/icons/search.svg"),
      ],
    ),
  );
}
