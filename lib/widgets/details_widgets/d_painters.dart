import 'package:flutter/material.dart';

class DImgTypePainter extends CustomPainter {
  final Color color;
  final double val;

  const DImgTypePainter({required this.color, required this.val});
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final percent = w * (val / 100);
    final paint = Paint()
      ..color = color
      ..strokeWidth = 3;
    canvas.drawLine(Offset(0, h / 2), Offset(percent, h / 2), paint);
    canvas.drawCircle(Offset(percent, h / 2), 6, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
