import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            children: [
              SizedBox(
                height: kToolbarHeight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/icons/menu.png',
                        height: 30, width: 40, color: backPrimary),
                    const Text(
                      'Bonsai World',
                      style: TextStyle(
                        fontSize: 20,
                        color: backPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset('assets/icons/cart2.png', color: backPrimary),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'Find Your Bonsai Plant',
                  hintStyle: const TextStyle(color: Colors.black26),
                  suffixIcon:
                      const Icon(Icons.search, color: Colors.greenAccent),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.red)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
