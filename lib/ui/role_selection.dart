import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sakela/services/auth.dart';
import 'package:sakela/widgets/button.dart';

import '../constants.dart';

class RoleSelection extends StatefulWidget{
  Auth auth;
  final VoidCallback loginCallback;

  RoleSelection({this.auth, this.loginCallback});

  State<StatefulWidget> createState() {
    return _RoleSelection();
  }
}

class _RoleSelection extends State<RoleSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.horizontal(right: Radius.circular(15))),
          backgroundColor: Color(0xff169E65),
        ),
        body: Container(
          child: ListView(children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(30, 150, 30, 0),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      "Setup your profile",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  Center(
                    child: Text(
                      "What's your role?",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Button(
                    title: "Parent",
                    onPressed: () {
                      Navigator.pushNamed(context, ParentLoginRoute,
                          arguments:
                          {
                            'auth' : widget.auth,
                            'voidCallback': widget.loginCallback
                          });
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Button(
                    title: "Coach",
                    onPressed: () {
                      Navigator.pushNamed(context, ParentLoginRoute,arguments:
                      {
                        'auth' : widget.auth,
                        'voidCallback': widget.loginCallback
                      });
                    },
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
