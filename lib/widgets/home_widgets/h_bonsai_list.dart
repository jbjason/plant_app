import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';
import 'package:plant_app/constants/constants_get.dart';

class HBonsaiList extends StatelessWidget {
  const HBonsaiList({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: size.height * .28,
      width: size.width,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, i) {
          final item = categories[i];
          return Container(
            width: size.width * .6,
            margin: const EdgeInsets.only(right: 20),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  bottom: 5,
                  left: 0,
                  right: 5,
                  height: size.height * .14,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      boxShadow: boxShadow,
                      color: Colors.white,
                      //boxShadow: boxShadow,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(item.type, color: Colors.amber),
                        const SizedBox(height: 10),
                        Text(
                          item.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: font1,
                            color: backPrimary,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '\$ ${item.price}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: backPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 20,
                  right: -40,
                  bottom: size.height * .06,
                  child: Image.asset(item.img),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  height: 38,
                  width: 38,
                  child: FittedBox(
                    child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                          ),
                          color: backThird,
                        ),
                        child: const Icon(Icons.shopping_bag)),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
