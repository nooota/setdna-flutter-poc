import 'package:flutter/material.dart';

class MyStyle {
  Color darkColor = Color(0xffc38100);
  Color primaryColor = Color(0xfffbb034);
  Color lightColor = Color(0xffffe267);

  Widget showLogo() => Image.asset('images/makeitwork.png');

  Widget setLogo() => Image.asset(
        'images/set.png',
        height: 70,
        fit: BoxFit.fitHeight,
      );

  Widget profileImage() => Image.asset(
    'images/02130.jpg',
    height: 70,
    fit: BoxFit.fitHeight,
  );

  Widget labelH1(String string) => Text(
        string,
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: darkColor),
      );

  Widget labelH2(String string) => Text(
        string,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, color: darkColor),
      );

  Widget labelH3(String string) => Text(
        string,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.normal, color: darkColor),
      );

  MyStyle();
}
