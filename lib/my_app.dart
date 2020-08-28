import 'package:flutter/material.dart';
import 'package:sakela/constants.dart';
import 'package:sakela/services/auth.dart';
import 'package:splashscreen/splashscreen.dart';
import 'root_page.dart';
import 'package:sakela/ui/main.dart';
import 'package:sakela/router.dart';

// main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:  SplashScreen(
        seconds: 4,
        navigateAfterSeconds: new RootPage(auth:Auth()),
        title: new Text("Sakela", style: TextStyle(
          color: Colors.white,
          fontSize: 50,
        ),),
        backgroundColor:  Color(0xff169E65),
        styleTextUnderTheLoader: new TextStyle(),
        loaderColor: Colors.white,
      ),
      onGenerateRoute: Router.generateRoute,
      initialRoute: homeRoute,
    );
  }
}