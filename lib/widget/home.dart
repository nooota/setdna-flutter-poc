import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:setdna/utility/my_style.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [header(), banner(), enterpriseService(), news()],
          ),
        ),
      ),
    );
  }

  Container news() {
    return Container(
        child: Column(
      children: [
        Container(
          color: MyStyle().primaryColor,
          child: Row(
            children: [
              Icon(Icons.grid_view),
              Text('News'),
            ],
          ),
        ),
      ],
    ));
  }

  Container enterpriseService() {
    return Container(
        child: Column(
      children: [
        Container(
          color: MyStyle().primaryColor,
          child: Row(
            children: [
              Icon(Icons.grid_view),
              Text('Enterprise Service'),
            ],
          ),
        ),
        GridView.count(
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(2),
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          crossAxisCount: 4,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: iconWithLabel(Icons.meeting_room, 'Room'),
              color: Colors.grey.shade800,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: iconWithLabel(Icons.wb_sunny_rounded, 'Leave'),
              color: Colors.grey.shade800,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: iconWithLabel(Icons.directions_car_rounded, 'Car'),
              color: Colors.grey.shade800,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: iconWithLabel(Icons.phone, 'Phone'),
              color: Colors.grey.shade800,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: iconWithLabel(Icons.my_location_outlined, 'Location'),
              color: Colors.grey.shade800,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: iconWithLabel(Icons.credit_card, 'Finance'),
              color: Colors.grey.shade800,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: iconWithLabel(Icons.wifi, 'Wifi'),
              color: Colors.grey.shade800,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: iconWithLabel(Icons.monitor, 'Learning'),
              color: Colors.grey.shade800,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child:
                  iconWithLabel(Icons.local_fire_department_rounded, 'Escape'),
              color: Colors.grey.shade800,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: iconWithLabel(Icons.account_tree, 'BCP'),
              color: Colors.grey.shade800,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: iconWithLabel(Icons.face, 'COVID-19'),
              color: Colors.grey.shade800,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: iconWithLabel(Icons.more_horiz, 'More'),
              color: Colors.grey.shade800,
            ),
          ],
        ),
      ],
    ));
  }

  Container banner() {
    return Container(
        child: Image.network(
            'https://lh3.googleusercontent.com/proxy/l_ixB8QK2uFVqrgmbWc62_6lVilW_VGUb4NV0W36U0KM8JQCiJh2wcd4Edu-_wHQu4SC5QH1ret1O8fu-Th2sP9OJMR23D-gpcfDWs6eYTSnwFAvd-D4whhbVy2uqgnTZtAAPy4mDh61IsWNhqnABcQXyvz7cjQcpmMkTY0qc0I2SGDESZDNpgp1_oW6x1q5f8gbHJzZ'));
  }

  Container header() {
    return Container(
        color: Colors.black,
        child: Row(
          children: [MyStyle().setLogo(), Spacer(), MyStyle().profileImage()],
        ));
  }

  Widget iconWithLabel(IconData icon, String label) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 45,
            color: Colors.grey,
          ),
          Text(label, style: TextStyle(color: Colors.grey, fontSize: 18)),
        ],
      ),
    );
  }
}
