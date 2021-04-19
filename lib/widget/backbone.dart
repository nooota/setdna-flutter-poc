import 'package:flutter/material.dart';
import 'package:setdna/utility/my_style.dart';

import 'approval.dart';
import 'home.dart';
import 'notification_center.dart';

class BackBone extends StatefulWidget {
  @override
  _BackBoneState createState() => _BackBoneState();
}

class _BackBoneState extends State<BackBone> {
  int tabIndex = 0;
  List<Widget> listScreens;
  @override
  void initState() {
    super.initState();
    listScreens = [
      Home(),
      Approval(),
      NotificationCenter(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: Scaffold(
        body: listScreens[tabIndex],
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey[400],
            backgroundColor: Colors.black,
            currentIndex: tabIndex,
            onTap: (int index) {
              setState(() {
                tabIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.check),
                label: 'Approveal',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notification',
              ),
            ]),
        backgroundColor: MyStyle().darkColor,
      ),
    );
  }
}
