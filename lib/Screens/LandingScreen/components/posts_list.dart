import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:surfing_app/Models/PostsData.dart';
import 'package:surfing_app/Screens/ProfileScreen/profile_screen.dart';
import 'package:surfing_app/constants.dart';

class Posts extends StatelessWidget {
  final Post post;
  final Size size;

  const Posts({Key key, this.post, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.02),
      child: Stack(
        children: [
          Container(
            height: size.height * 0.32,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(143.0),
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
              child: Image.asset(
                post.bgimage,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.12),
            child: Container(
              height: size.height * 0.2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black54, Colors.transparent]),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
            ),
          ),
          Container(
            height: size.height * 0.32,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.height * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 46.0,
                        height: 46.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Color(0xFFB039F3), width: 2.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Image.asset(post.profilePic),
                        ),
                      ),
                      SizedBox(width: size.width * 0.03),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.name,
                            style: kNameTextStyle,
                          ),
                          Text(
                            post.time,
                            style: kTimeTextStyle,
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.04, top: size.height * 0.03),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/heart.svg"),
                        Text(
                          " " + post.likes,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.045, top: size.height * 0.02),
                    child: SvgPicture.asset("assets/icons/save.svg"),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 42.0,
                          width: 42.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: SvgPicture.asset("assets/icons/pause.svg"),
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.03),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.text,
                            style: kPostTextStyle,
                          ),
                          Text(
                            post.place,
                            style: kPostPlaceTextStyle,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
