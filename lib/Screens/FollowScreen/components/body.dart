import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:surfing_app/Widgets/story_list.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/surf.png",
          fit: BoxFit.cover,
          width: size.width,
          height: size.height,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black54,
                Colors.transparent,
                Colors.black54,
              ],
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.height * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset("assets/icons/back_arrow.svg"),
                  ),
                  SvgPicture.asset("assets/icons/dots.svg"),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Text(
                "Michael Scott",
                style: kNameStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Text(
                'From surfing’s early beginnings as the '
                '“Sport of Kings” in Hawaii, it has held a '
                'certain sway over spectators and '
                'participants alike.',
                style: kContentStyle,
              ),
            ),
            SizedBox(height: size.height * 0.18),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/icons/back.svg"),
                  SvgPicture.asset("assets/icons/forward.svg"),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.23),
            Center(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                  child: FlatButton(
                    color: Colors.white.withOpacity(0.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.18,
                          vertical: size.height * 0.02),
                      child: Text(
                        "FOLLOW",
                        style: kNameStyle.copyWith(fontSize: 15.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            StoriesList(size: size),
          ],
        ),
      ],
    );
  }
}
