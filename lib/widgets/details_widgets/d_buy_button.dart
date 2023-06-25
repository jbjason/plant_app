import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';

class DBuyButton extends StatelessWidget {
  const DBuyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(4.0),
        backgroundColor: MaterialStateProperty.all(backPrimary),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        ),
        shape: MaterialStateProperty.all(
          ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      child: const Text(
        'Buy Now',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
