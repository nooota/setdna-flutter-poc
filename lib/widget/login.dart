import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setdna/utility/my_style.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double screen;

  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    print('screen = $screen');
    return Scaffold(
        body: Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        buildLogo(),
        Container(margin: EdgeInsets.only(top: 30),),
        buildUsernameTextField(),
        buildPasswordTextField()
      ]),
    ));
  }

  Container buildUsernameTextField() {
    return Container(width: screen * 0.5, child: TextField(
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.perm_identity),
        hintText: 'Username',
      ),
    ));
  }

  Container buildPasswordTextField() {
    return Container(width: screen * 0.5, child: TextField(
      obscureText: true,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_outline),
        hintText: 'Password',
      ),
    ));
  }

  Container buildLogo() {
    return Container(width: screen * 0.5, child: MyStyle().showLogo());
  }
}
