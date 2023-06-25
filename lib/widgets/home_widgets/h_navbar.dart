import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';
import 'package:plant_app/widgets/home_widgets/h_painters.dart';

class HNavBar extends StatelessWidget {
  const HNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kBottomNavigationBarHeight + 7,
      child: CustomPaint(
        painter: HNavPainter(),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home_outlined, color: iconSecondary),
            Icon(CupertinoIcons.camera, color: iconBack2),
            Icon(Icons.settings_outlined, color: iconBack2),
            Icon(CupertinoIcons.person, color: iconBack2),
          ],
        ),
      ),
    );
  }
}
