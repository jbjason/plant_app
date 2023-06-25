import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';
import 'package:plant_app/models/bonsai.dart';
import 'package:plant_app/widgets/details_widgets/d_buy_button.dart';
import 'package:plant_app/widgets/details_widgets/d_counter.dart';
import 'package:plant_app/widgets/details_widgets/d_type_list.dart';
import 'package:plant_app/constants/constants_get.dart';

class DBody extends StatelessWidget {
  const DBody({super.key, required this.item});
  final Bonsai item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(17),
        ),
        gradient: bodyGradient,
        boxShadow: boxShadow,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 70),
          // title
          Text(
            item.title,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: backPrimary,
              fontFamily: font3,
            ),
          ),
          const SizedBox(height: 8),
          // price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$ ${item.price}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: backPrimary,
                  fontSize: 18,
                  fontFamily: font3,
                ),
              ),
              Text(
                item.lifeTime,
                style: const TextStyle(fontSize: 9, color: textColor),
              ),
            ],
          ),
          const SizedBox(height: 30),
          // counter & reviews & ratings
          DCounter(item: item),
          const SizedBox(height: 20),
          // details
          Expanded(
            child: Text(
              item.details,
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 10,
                color: textThirdColor,
                fontFamily: font3,
              ),
            ),
          ),
          // 3 img-type list
          const DTypeList(),
          const SizedBox(height: 20),
          // buy-now button
          const DBuyButton(),
        ],
      ),
    );
  }
}
