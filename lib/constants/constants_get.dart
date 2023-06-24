import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';

const bodyGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Colors.white, Colors.white, Color(0xB3FFFFFF), Color(0x62FFFFFF)],
);

const greenGradient = LinearGradient(
  tileMode: TileMode.repeated,
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [backPrimary, backSecondary, backSecondary, backSecondary],
);

final boxShadow = [
  BoxShadow(
    color: const Color(0xFF3F6080).withOpacity(.4),
    blurRadius: 32,
    offset: const Offset(10, 5),
  ),
  BoxShadow(
    color: const Color(0xFFFFFFFF).withOpacity(1),
    blurRadius: 32,
    offset: const Offset(-10, -5),
  ),
];
