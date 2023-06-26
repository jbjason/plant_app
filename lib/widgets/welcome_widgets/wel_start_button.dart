import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';
import 'package:plant_app/screens/home_screen.dart';

class WelStartButton extends StatelessWidget {
  const WelStartButton({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}
