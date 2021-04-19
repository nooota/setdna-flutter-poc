import 'package:flutter/material.dart';
import 'package:setdna/widget/home.dart';
import 'package:setdna/widget/login.dart';

final Map<String, WidgetBuilder> routes = {
  '/login': (BuildContext context) => Login(),
  '/home': (BuildContext context) => Home()
};

