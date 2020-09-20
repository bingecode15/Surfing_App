import 'package:flutter/material.dart';
import 'package:surfing_app/Models/PostsData.dart';
import 'package:surfing_app/Screens/LandingScreen/components/buildAppBar.dart';
import 'package:surfing_app/Screens/LandingScreen/components/posts_list.dart';
import 'package:surfing_app/Widgets/story_list.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildAppBar(size),
        StoriesList(size: size),
        Container(
          height: size.height * 0.75,
          child: ListView.builder(
            itemCount: post.length,
            itemBuilder: (context, index) => Posts(
              post: post[index],
              size: size,
            ),
          ),
        )
      ],
    );
  }
}
