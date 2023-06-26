import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';

class HAppBar extends StatelessWidget {
  const HAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/icons/menu.png',
              height: 30, width: 40, color: backPrimary),
          const Text(
            'Bonsai World',
            style: TextStyle(fontSize: 20, color: backPrimary),
          ),
          Image.asset('assets/icons/cart2.png', color: backPrimary),
        ],
      ),
    );
  }
}
