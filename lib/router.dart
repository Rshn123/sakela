import 'package:flutter/material.dart';
import 'package:sakela/constants.dart';
import 'package:sakela/ui/parent/homescreen.dart';
import 'package:sakela/ui/parent/new_spsetting_screen.dart';
import 'package:sakela/ui/role_selection.dart';
import 'package:sakela/ui/login.dart';

import 'ui/main.dart';
class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => Main());

      case roleSelection:
        return MaterialPageRoute(builder: (_) => RoleSelection());

      case ParentLoginRoute:
        var parentParameter = settings.arguments as Map;
        Object parentParemeters = settings.arguments;
        return MaterialPageRoute(builder: (_) => Login(auth: parentParameter['auth'], loginCallback: parentParameter["voidCallback"],));

      case HomeScreenRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      case CoachLoginRoute:
        return MaterialPageRoute(builder: (_) => Login());

      case SettingRoute:
        return MaterialPageRoute(builder: (_) => SpSetting());

      default:
        return MaterialPageRoute(
            builder: (_) =>
                Scaffold(
                    body: Center(
                      child: Text("No route defined for ${settings.name}"),)
                )
        );
    }
  }
}
PageRoute _getPageRoute({String routeName, Widget viewToShow}) {
  return MaterialPageRoute(
      settings: RouteSettings(
        name: routeName,
      ),
      builder: (_) => viewToShow);
}