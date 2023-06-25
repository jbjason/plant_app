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
      height: size.height * .33,
      //decoration: BoxDecoration(),
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
                  _getTitle(item.title),
                  // subtitle
                  Text(
                    item.lifeTime,
                    style: const TextStyle(color: textSecondary, fontSize: 10),
                  ),
                  const Spacer(),
                  // price & offer-percent
                  _getPriceAndOffer(item.price, item.discount)
                ],
              ),
            ),
            // img
            Positioned(
              left: 0,
              right: -100,
              top: -100,
              bottom: 30,
              child: Image.asset(item.img, fit: BoxFit.fitHeight),
            ),
          ],
        ),
      ),
    );
  }

  Text _getTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: font3,
        fontSize: 30,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        foreground: Paint()
          ..shader = const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFFEEEEEE),
              Color(0xFFEEEEEE),
              Color(0xFFEEEEEE),
              Colors.amber,
              Colors.amber,
            ],
          ).createShader(const Rect.fromLTWH(0, 0, 300, 100)),
      ),
    );
  }

  Row _getPriceAndOffer(double price, double discount) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '\$ $price',
            style: const TextStyle(
              color: textPrimary,
              fontSize: 26,
              fontFamily: font3,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '$discount%  OFF',
            style: const TextStyle(
              color: backPrimary,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
}
