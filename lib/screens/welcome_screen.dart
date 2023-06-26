import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';
import 'package:plant_app/widgets/welcome_widgets/wel_body_texts.dart';
import 'package:plant_app/widgets/welcome_widgets/wel_painter.dart';
import 'package:plant_app/widgets/welcome_widgets/wel_start_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 30),
          child: CustomPaint(
            painter: WelPainter(),
            child: Stack(
              clipBehavior: Clip.none,
              fit: StackFit.expand,
              children: [
                // main Image
                Positioned(
                  top: -size.height * .2,
                  bottom: size.height * .2,
                  left: -size.width * .35,
                  right: -size.height * .04,
                  child: Image.asset(welcomeImg, fit: BoxFit.contain),
                ),
                // welcome text
                WelBodyTexts(size: size),
                const Positioned(
                  bottom: 0,
                  right: -25,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'BONSAI PLANTERS',
                      style: TextStyle(
                        fontSize: 76,
                        letterSpacing: 1.5,
                        wordSpacing: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white10,
                      ),
                    ),
                  ),
                ),
                // bottom middle img
                Positioned(
                  bottom: -size.height * .04,
                  right: 30,
                  width: size.width * .5,
                  height: size.height * .17,
                  child: Image.asset(welcomeImg4, fit: BoxFit.fill),
                ),
                // bottom right img
                Positioned(
                  bottom: -10,
                  right: -10,
                  width: size.width * .25,
                  height: size.height * .07,
                  child: Image.asset(welcomeImg3),
                ),
                // get started button
                WelStartButton(size: size),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
