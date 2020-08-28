import 'package:flutter/material.dart';
import 'package:sakela/color/color_sets.dart';
import 'package:sakela/widgets/textformfield.dart';

//main() => runApp(MaterialApp(home: Registration()));

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String radioItem = "";
  String name;
  String nickname;
  String dateOfBirth;
  String seasonFallOn2020;
  String gender;
  String childLegalInformation;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _text(String text) {
    return Text(
      text,
      style: TextStyle(color: ColorSets.textColorOpacity),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSets.backgroundColor,
      appBar: AppBar(
        backgroundColor: ColorSets.backgroundColor,
        title: Center(
          child: Text("Registration"),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(30, 50, 30, 0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _text("Name"),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextFormField(
                    validate: (value){
                      if(value==""){
                        return "Name Required";
                      }
                      return null;
                    },
                    onChanged: (value){
                      name = value;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _text("Nickname"),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextFormField(
                    validate: (value){
                      if(value==""){
                        return "Nickname Required";
                      }
                      return null;
                    },
                    onChanged: (value){
                      nickname = value;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _text("Date Of Birth"),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextFormField(
                    validate: (value){
                      if(value==""){
                        return "Date of Birth Required";
                      }
                      return null;
                    },
                    onChanged: (value){
                      dateOfBirth = value;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _text("Season Fall on 2020"),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextFormField(validate: (value){
                    if(value==""){
                      return "Field Shouldn't be Empty";
                    }
                    return null;
                  },
                    onChanged: (value){
                      seasonFallOn2020 = value;
                    },),
                  SizedBox(
                    height: 20,
                  ),
                  _text("Gender"),
                  Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: Color(0xffCDCDCD),
                      disabledColor: Colors.black12
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Radio(
                              value: "Male",
                              groupValue: radioItem,
                              onChanged: (newValue) {
                                setState(() {
                                  radioItem = newValue;
                                });
                              },
                            ),
                            Text(
                              "Male",
                              style: TextStyle(color: ColorSets.textColor),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Radio(
                              value: "Female",
                              groupValue: radioItem,
                              onChanged: (newValue) {
                                setState(() {
                                  radioItem = newValue;
                                });
                              },
                            ),
                            Text(
                              "Female",
                              style: TextStyle(color: ColorSets.textColor),
                            ),
                            SizedBox(width: 40,)
                          ],
                        ),

                      ],
                    ),
                  ),
                  _text("Child Legal Information"),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextFormField(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: EdgeInsets.all(14),
              child: Text(
                "Sign Up",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            color: Color(0xff169E65),
            onPressed: () {
              if(_formKey.currentState.validate()){
                _formKey.currentState.save();
              }
              else{
                print("");
              }
            },
          ),
        ),
      ),
    );
  }
}
