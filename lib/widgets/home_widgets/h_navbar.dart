import 'package:flutter/material.dart';
import 'package:plant_app/widgets/home_widgets/h_painters.dart';

class HNavBar extends StatelessWidget {
  const HNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kBottomNavigationBarHeight + 7,
      child: CustomPaint(painter: HNavPainter()),
    );
  }
}
