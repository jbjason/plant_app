import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';
import 'package:plant_app/constants/constants_get.dart';
import 'package:plant_app/widgets/details_widgets/d_painters.dart';

class DTypeList extends StatelessWidget {
  const DTypeList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _getBonsaiType('Sunshine', '18.24 C', Colors.amber),
          _getBonsaiType('Watering', '8.12 C', Colors.cyan),
          _getBonsaiType('Sand',
              'Equal rate of coco peat, sand & venticompost.', Colors.red),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _getBonsaiType(String title, String details, Color color) => Container(
        height: 120,
        width: 110,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          gradient: bodyGradient,
          boxShadow: boxShadow,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: backPrimary,
                fontWeight: FontWeight.bold,
                fontFamily: font3,
              ),
            ),
            const Spacer(),
            // slider
            Container(
              height: 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.black12,
              ),
              child: CustomPaint(
                painter: DImgTypePainter(color: color, val: 70),
              ),
            ),
            const SizedBox(height: 5),
            // details
            Text(
              details,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: textThirdColor, fontSize: 10),
            ),
          ],
        ),
      );
}
