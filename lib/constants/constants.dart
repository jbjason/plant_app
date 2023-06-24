import 'package:flutter/material.dart';
import 'package:plant_app/models/bonsai.dart';

const scaffoldColor = Color.fromARGB(255, 243, 252, 243);
const bonsaiTypeColor = Colors.amber;

const backPrimary = Color.fromARGB(255, 10, 54, 11);
const backSecondary = Color.fromARGB(255, 108, 143, 68);
const backThird = Colors.lightGreen;

const textColor = Colors.green;
const textPrimary = Colors.white;
const textSecondary = Colors.white70;

const iconColor = Color.fromARGB(255, 1, 26, 2);
const iconSecondary = Colors.white;
const iconBack1 = Color(0xFF292929);
const iconBack2 = Color(0xFF5D6B54);

const welcomeTitle = "Welcome to\n   Bonsar World";
const welcomeSubTitle1 = "Feel fresh with a bonsai plants.";
const welcomeSubTitle2 = "It will enhance your living space!";

const welcomeImg = 'assets/images/bonsai2.png';
const welcomeImg2 = 'assets/images/bonsai3.png';
const welcomeImg3 = 'assets/images/bonsai7.png';
const welcomeImg4 = 'assets/images/bonsai8.png';

const categories = [
  Bonsai(
    title: 'Ficus Retusa',
    subTitle: 'Plant\'s age 6 years',
    img: 'assets/images/bonsai4.png',
    type: "assets/images/sun-25.png",
    price: 150,
    discount: 25,
  ),
  Bonsai(
    title: 'Carmona Retusa',
    subTitle: 'Plant\'s age 2 years',
    img: 'assets/images/bonsai6.png',
    type: "assets/images/water-25.png",
    price: 120,
    discount: 15,
  ),
  Bonsai(
    title: 'Chinese Alm',
    subTitle: 'Plant\'s age 7 years',
    img: 'assets/images/bonsai5.png',
    type: "assets/images/night-25.png",
    price: 350,
    discount: 10,
  ),
  Bonsai(
    title: 'Juniper',
    subTitle: 'Plant\'s age 3 years',
    img: 'assets/images/bonsai1.png',
    type: "assets/images/evening-25.png",
    price: 200,
    discount: 5,
  ),
];

const font1 = 'Casab';
const font2 = 'Script';
const font3 = 'Vinque';
