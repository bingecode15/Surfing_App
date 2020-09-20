import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:surfing_app/Screens/FollowScreen/follow_screen.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/images/bruno.png"),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.075,
                    vertical: size.height * 0.05),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child:
                          SvgPicture.asset("assets/icons/back_arrow_black.svg"),
                    ),
                    SizedBox(height: size.height * 0.04),
                    SvgPicture.asset("assets/icons/heart.svg"),
                    SizedBox(height: size.height * 0.025),
                    SvgPicture.asset("assets/icons/save.svg"),
                    SizedBox(height: size.height * 0.025),
                    SvgPicture.asset("assets/icons/share.svg"),
                  ],
                ),
              ),
              Positioned(
                bottom: size.height * 0.03,
                left: size.width * 0.04,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FollowScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 71,
                    width: 71,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: SvgPicture.asset("assets/icons/pause.svg"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.03),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.075),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 49.0,
                      width: 49.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFFB039F3),
                          width: 2.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Image.asset("assets/images/story1.png"),
                      ),
                    ),
                    SizedBox(width: size.width * 0.04),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "JAMES BRUNO",
                          style: kNameTextStyle.copyWith(
                            fontSize: 17.0,
                          ),
                        ),
                        Text(
                          "4 HOURS AGO",
                          style: kTimeTextStyle,
                        ),
                      ],
                    ),
                    Spacer(),
                    SvgPicture.asset("assets/icons/add_user.svg"),
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                Text(
                  "The 10 Most Influential Surfers of All Time",
                  style: kHeadingTextStyle,
                ),
                Text("03/07/2019", style: kDateTextStyle),
                SizedBox(height: size.height * 0.03),
                Container(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/surfing.png",
                      ),
                    ),
                  ),
                ),
                Text(
                  'Aliquam in bibendum mauris. Sed vitae erat '
                  'vel velit blandit pharetra vitae nec ante. Cras at est augue.'
                  ' Cras ut interdum elit. Ut malesuada a urna sit amet '
                  'blandit. Nullam nunc lorem, aliquam at eros laoreet, '
                  'feugiat bibendum ligula. Aenean congue, massa id liquet'
                  ' semper, ligula ante tristique nulla,',
                  style: kContentTextStyle,
                ),
                SizedBox(height: size.height * 0.03),
              ],
            ),
          )
        ],
      ),
    );
  }
}
