import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';
import 'package:plant_app/constants/constants_get.dart';

class WelPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final rect =
        Rect.fromCenter(center: Offset(w / 2, h / 2), width: w, height: h);
    final paint = Paint()..shader = greenGradient.createShader(rect);

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

    canvas.drawShadow(path, backPrimary, 10, false);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
