import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setdna/utility/my_style.dart';
import 'package:setdna/widget/backbone.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double screen;
  bool statusRedEye = true;

  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    print('screen = $screen');
    return Scaffold(
        body: Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        buildLogo(),
        Container(
          margin: EdgeInsets.only(top: 30),
        ),
        buildUsernameTextField(),
        buildPasswordTextField(),
        buildLoginButton()
      ]),
    ));
  }

  Container buildLoginButton() => Container(
      margin: EdgeInsets.only(top: 30),
      width: screen * 0.5,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: MyStyle().darkColor),
          onPressed: () {
            print('login pressed');
            MaterialPageRoute materialPageRoute = MaterialPageRoute(builder: (BuildContext buildContext) => BackBone());
            Navigator.of(context).push(materialPageRoute);
          },
          child: Text('Login')));

  Container buildUsernameTextField() {
    return Container(
        width: screen * 0.5,
        child: TextField(
          style: TextStyle(color: MyStyle().darkColor),
          enableSuggestions: false,
          autocorrect: false,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.perm_identity,
                color: MyStyle().darkColor,
              ),
              hintText: 'Username',
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: MyStyle().darkColor)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: MyStyle().darkColor))),
        ));
  }

  Container buildPasswordTextField() {
    return Container(
        width: screen * 0.5,
        child: TextField(
          obscureText: statusRedEye,
          enableSuggestions: false,
          autocorrect: false,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock_outline,
                color: MyStyle().darkColor,
              ),
              suffixIcon: IconButton(
                icon: Icon(statusRedEye ? Icons.remove_red_eye : Icons.remove,
                    color: MyStyle().darkColor),
                onPressed: () {
                  FocusScope.of(context).requestFocus();
                  setState(() {
                    statusRedEye = !statusRedEye;
                  });
                },
              ),
              hintText: 'Password',
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: MyStyle().darkColor)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: MyStyle().darkColor))),
        ));
  }

  Container buildLogo() {
    return Container(width: screen * 0.5, child: MyStyle().showLogo());
  }
}
