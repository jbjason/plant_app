import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';
import 'package:plant_app/constants/constants_get.dart';
import 'package:plant_app/models/bonsai.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.item});
  final Bonsai item;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).padding.top,
            child: AppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: iconColor,
                ),
              ),
              actions: const [
                Icon(Icons.notifications_outlined, color: iconColor),
                SizedBox(width: 15),
              ],
            ),
          ),
          Positioned(
            top: size.height * .3,
            bottom: 0,
            left: 20,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(17),
                ),
                gradient: bodyGradient,
                boxShadow: boxShadow,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(4.0),
                      backgroundColor: MaterialStateProperty.all(backPrimary),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
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
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: -100,
            right: 0,
            height: size.height * .4,
            child: Image.asset(item.img, fit: BoxFit.fitHeight),
          ),
        ],
      ),
    );
  }
}
