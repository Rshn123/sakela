import "package:flutter/material.dart";
import 'package:sakela/ui/role_selection.dart';
import 'package:sakela/router.dart';
import 'package:splashscreen/splashscreen.dart';

import '../constants.dart';

//main()=>runApp(MyApp());

class Main extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _Main();
  }
}

class _Main extends State<Main>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      onGenerateRoute: Router.generateRoute,
      initialRoute: homeRoute,
    );
  }
}