import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';
import 'package:plant_app/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 30),
          child: CustomPaint(
            painter: WelcomePainter(),
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
                Positioned(
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
                ),
                // bottom left img
                Positioned(
                  bottom: -size.height * .02,
                  left: -size.height * .085,
                  width: size.width * .6,
                  height: size.height * .1,
                  child: Image.asset(welcomeImg2),
                ),
                // bottom middle img
                Positioned(
                  bottom: -size.height * .1,
                  right: size.width * .13,
                  width: size.width * .7,
                  height: size.height * .3,
                  child: Image.asset(welcomeImg4, fit: BoxFit.fill),
                ),
                // bottom right img
                Positioned(
                  bottom: -size.height * .02,
                  right: 0,
                  width: size.width * .35,
                  height: size.height * .12,
                  child: Image.asset(welcomeImg3),
                ),

                // get started button
                Positioned(
                  top: size.height * .69,
                  left: size.width * .2,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const HomeScreen()),
                      );
                    },
                    child: const Text(
                      'Get Started →',
                      style: TextStyle(
                        fontSize: 20,
                        color: backPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WelcomePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final rect =
        Rect.fromCenter(center: Offset(w / 2, h / 2), width: w, height: h);
    const gradient = LinearGradient(
      tileMode: TileMode.repeated,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [backPrimary, backSecondary, backSecondary, backSecondary],
    );
    final paint = Paint()..shader = gradient.createShader(rect);

    final path = Path();
    path.moveTo(w, 0);
    path.lineTo(w, h);
    path.lineTo(w * .3, h);
    path.lineTo(w * .3, h * .85);
    path.cubicTo(w * .3, h * .8, w * .4, h * .8, w * .6, h * .8);
    path.lineTo(w * .65, h * .8);
    path.cubicTo(w * .8, h * .8, w * .8, h * .725, w * .65, h * .725);
    path.lineTo(w * .1, h * .725);
    path.quadraticBezierTo(0, h * .725, 0, h * .65);
    path.lineTo(0, h * .1);
    path.quadraticBezierTo(0, 0, w * .2, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
