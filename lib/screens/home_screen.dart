import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';
import 'package:plant_app/widgets/home_widgets/h_appbar.dart';
import 'package:plant_app/widgets/home_widgets/h_bonsai_list.dart';
import 'package:plant_app/widgets/home_widgets/h_navbar.dart';
import 'package:plant_app/widgets/home_widgets/h_offer_card.dart';
import 'package:plant_app/widgets/home_widgets/h_search_bar.dart';

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
              const SizedBox(height: 10),
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
                    fontSize: 18,
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
