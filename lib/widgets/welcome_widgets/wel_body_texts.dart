import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';

class WelBodyTexts extends StatelessWidget {
  const WelBodyTexts({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 40,
      right: 0,
      bottom: size.height * .3,
      height: size.height * .25,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // title
          Text(
            welcomeTitle,
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              fontFamily: font1,
            ),
          ),
          // subtitle 1
          Text(
            welcomeSubTitle1,
            style: TextStyle(
              fontSize: 10,
              color: Colors.white70,
              fontFamily: font3,
            ),
          ),
          // subtitle 2
          Text(
            welcomeSubTitle2,
            style: TextStyle(
              fontSize: 10,
              fontFamily: font3,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
