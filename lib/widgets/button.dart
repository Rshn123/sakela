import 'package:flutter/material.dart';

class Button extends StatefulWidget{
  final String title;
  final GestureTapCallback  onPressed;
  const Button({@required this.title, @required this.onPressed});

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              widget.title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          color: Color(0xff169E65),
          onPressed: widget.onPressed
        ),
    );
  }
}