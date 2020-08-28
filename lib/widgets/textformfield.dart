import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final Function validate;

  MyTextFormField({@required this.onChanged, this.validate});

  @override
  _MyTextFormFieldState createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
      decoration: BoxDecoration(
        color: Color(0xff3C3B40),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        validator: widget.validate,
        onChanged: widget.onChanged,
      ),
    );
  }
}
