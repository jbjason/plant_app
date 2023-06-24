import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';
import 'package:plant_app/widgets/home_widgets/h_painters.dart';

class HOfferCard extends StatelessWidget {
  const HOfferCard({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    final item = categories[2];
    return Container(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      height: size.height * .35,
      child: CustomPaint(
        painter: HOfferCardPainter(),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // category type top
                  Image.asset(categories[0].type, color: bonsaiTypeColor),
                  const SizedBox(height: 15),
                  // category type bottom
                  Image.asset(item.type, color: bonsaiTypeColor),
                  const Spacer(),
                  // title
                  Text(
                    item.title,
                    style: const TextStyle(
                      color: textPrimary,
                      fontFamily: font3,
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // subtitle
                  Text(
                    item.subTitle,
                    style: const TextStyle(color: textSecondary, fontSize: 10),
                  ),
                  const Spacer(),
                  // price & offer-percent
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$ ${item.price}',
                        style: const TextStyle(
                          color: textPrimary,
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${item.discount}%  OFF',
                        style: const TextStyle(
                          color: backPrimary,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // img
            Positioned(
              left: 0,
              right: -100,
              top: -100,
              bottom: 50,
              child: Image.asset(item.img, fit: BoxFit.fitHeight),
            ),
          ],
        ),
      ),
    );
  }
}
