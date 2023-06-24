import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';
import 'package:plant_app/constants/constants_get.dart';
import 'package:plant_app/widgets/home_widgets/h_appbar.dart';
import 'package:plant_app/widgets/home_widgets/h_bonsai_list.dart';
import 'package:plant_app/widgets/home_widgets/h_navbar.dart';
import 'package:plant_app/widgets/home_widgets/h_offer_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10),
              // appBar
              const HAppBar(),
              // textField
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: HSearchBar(),
              ),
              const SizedBox(height: 15),
              // offer card
              HOfferCard(size: size),
              // varient text
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Varients',
                  style: TextStyle(
                    color: backPrimary,
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                  ),
                ),
              ),
              // bonsai-plant list
              HBonsaiList(size: size),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const HNavBar(),
    );
  }
}

class HSearchBar extends StatelessWidget {
  const HSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Container(
      height: 53,
      decoration: BoxDecoration(
        gradient: bodyGradient,
        borderRadius: BorderRadius.circular(14),
        boxShadow: boxShadow,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              autofocus: false,
              textInputAction: TextInputAction.search,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                border: InputBorder.none,
                hintText: 'Search doctor',
                hintStyle: TextStyle(
                  color: Color(0xFFE0E0E0),
                  fontSize: 14,
                  letterSpacing: 1.3,
                  wordSpacing: 1.5,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(4.5),
            width: 50,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: bodyGradient,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(11),
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(11),
                bottomRight: Radius.circular(11),
              ),
            ),
            child: const Icon(CupertinoIcons.search, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
