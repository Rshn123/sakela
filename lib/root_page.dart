import 'package:flutter/material.dart';
import 'package:sakela/services/auth.dart';
import 'package:sakela/ui/login.dart';
import 'package:sakela/ui/main.dart';
import 'package:sakela/ui/parent/homescreen.dart';
import 'package:sakela/ui/role_selection.dart';

enum AuthStatus { NOT_DETERMINED, NOT_LOGGED_IN, LOGGED_IN }

class RootPage extends StatefulWidget {
  Auth auth;

  RootPage({this.auth});

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  AuthStatus authStatus = AuthStatus.NOT_DETERMINED;
  String _userId = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.auth.getCurrentUser().then((user) {
      setState(() {
        if (user != null) {
          _userId = user?.uid;
        }
        authStatus =
        user?.uid == null ? AuthStatus.NOT_LOGGED_IN : AuthStatus.LOGGED_IN;
      });
    });
  }

  void loginCallBack() {
    widget.auth.getCurrentUser().then((user) {
      setState(() {
        _userId = user.uid.toString();
      });
    });
    setState(() {
      authStatus = AuthStatus.LOGGED_IN;
    });
  }

  void logOutCallBack() {
    setState(() {
      authStatus = AuthStatus.LOGGED_IN;
      _userId = "";
    });
  }

  Widget _buildWaitingScreen() {
    return Scaffold(
        body: Container(
          child: CircularProgressIndicator(),
          alignment: Alignment.center,
        ));
  }

  @override
  Widget build(BuildContext context) {
    switch (authStatus) {
      case AuthStatus.NOT_DETERMINED:
        return _buildWaitingScreen();
      case AuthStatus.NOT_LOGGED_IN:
        return RoleSelection(auth: widget.auth, loginCallback: loginCallBack,);
        break;
      case AuthStatus.LOGGED_IN:
        return HomeScreen();
        break;
    }
  }
}
