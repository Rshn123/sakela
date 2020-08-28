import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sakela/color/color_sets.dart';

class MyDropDownButton extends StatelessWidget {
  final String value;
  final List<String> labels;
  final ValueChanged<String> onChanged;

  const MyDropDownButton({
    Key key,
    @required this.value,
    @required this.labels,
    @required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DropdownButton<String>(
        hint: Center(child: Text(value,style:TextStyle( color:ColorSets.textColor))),
        isExpanded: true,
        underline: Container(
          height: 0,
        ),
        onChanged: onChanged,
        items: labels.map<DropdownMenuItem<String>>((String values) {
          return DropdownMenuItem<String>(
            value: values,
            child: Text(values),
          );
        }).toList());
  }
}
