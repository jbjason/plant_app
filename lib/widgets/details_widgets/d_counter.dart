import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';
import 'package:plant_app/models/bonsai.dart';

class DCounter extends StatelessWidget {
  const DCounter({super.key, required this.item});
  final Bonsai item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // counter
          Container(
            width: 110,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: backSecondary,
            ),
            child: Row(
              children: [
                const Icon(Icons.add),
                const SizedBox(width: 6),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: const Text(
                      '01',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: textThirdColor),
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                const Icon(CupertinoIcons.minus),
              ],
            ),
          ),
          // rating & reviews
          Text('⭐${item.ratings} / Reveiws ${item.reviews}'),
        ],
      ),
    );
  }
}
