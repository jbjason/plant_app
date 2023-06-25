import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';
import 'package:plant_app/constants/constants_get.dart';

class HNavPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final paint = Paint()..color = const Color.fromARGB(255, 7, 43, 9);
    final path = Path();
    path.moveTo(0, h);
    path.lineTo(0, h * .55);
    path.cubicTo(0, h * .15, w * .1, h * .1, w * .5, 0);
    path.cubicTo(w * .9, h * .1, w, h * .15, w, h * .55);
    path.lineTo(w, h);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class HOfferCardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;

    // right side percent text card
    final path2 = Path();
    final paint2 = Paint()..color = Colors.amberAccent;
    path2.moveTo(w * .37, h * .9);
    path2.lineTo(w + 20, h * .7);
    path2.lineTo(w + 20, h);
    path2.lineTo(w * .3, h);
    path2.close();
    canvas.drawPath(path2, paint2);

    // left side card
    final rect =
        Rect.fromCenter(center: Offset(w / 2, h / 2), width: w, height: h);
    final paint = Paint()
      ..color = const Color.fromARGB(255, 111, 233, 174)
      ..shader = greenGradient.createShader(rect);
    final path = Path();
    path.moveTo(w * .35, 0);
    path.lineTo(w * .55, h);
    path.lineTo(w * .1, h);
    path.quadraticBezierTo(0, h, 0, h * .9);
    path.lineTo(0, h * .1);
    path.quadraticBezierTo(0, 0, w * .1, 0);
    path.close();
    canvas.drawShadow(path, backPrimary, 10, false);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
