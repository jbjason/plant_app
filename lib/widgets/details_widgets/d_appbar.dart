import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';

class DAppBar extends StatelessWidget {
  const DAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).padding.top,
      height: kToolbarHeight,
      left: 0,
      right: 0,
      child: AppBar(
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: iconColor,
          ),
        ),
        actions: const [
          Icon(Icons.notifications_outlined, color: iconColor),
          SizedBox(width: 15),
        ],
      ),
    );
  }
}
