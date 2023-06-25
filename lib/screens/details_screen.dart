import 'package:flutter/material.dart';
import 'package:plant_app/models/bonsai.dart';
import 'package:plant_app/widgets/details_widgets/d_appbar.dart';
import 'package:plant_app/widgets/details_widgets/d_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.item});
  final Bonsai item;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // 3 img-types container
          Positioned(
            top: size.height * .3,
            bottom: 0,
            left: 30,
            right: 0,
            child: DBody(item: item),
          ),
          // img
          Positioned(
            top: 0,
            left: -50,
            right: 0,
            height: size.height * .4,
            child: Image.asset(item.img, fit: BoxFit.fitHeight),
          ),
          // appbar
          const DAppBar(),
        ],
      ),
    );
  }
}
