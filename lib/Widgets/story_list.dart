import 'package:flutter/material.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final List stories = [
      "assets/images/story1.png",
      "assets/images/story2.png",
      "assets/images/story3.png",
      "assets/images/story4.png",
      "assets/images/story5.png"
    ];

    final List colors = [
      Color(0xFF09C4FF),
      Color(0xFFB039F3),
      Color(0xFFF33990),
      Color(0xFF395EF3),
      Color(0xFFB039F3),
    ];
    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.05),
      child: Container(
        height: 80.0,
        child: ListView.builder(
          itemCount: stories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(right: size.width * 0.05),
            child: Container(
              height: 57.0,
              width: 57.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: colors[index],
                  width: 3.0,
                ),
              ),
              child: Image.asset(stories[index]),
            ),
          ),
        ),
      ),
    );
  }
}
