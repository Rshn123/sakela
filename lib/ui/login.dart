import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sakela/services/auth.dart';
import 'package:sakela/widgets/button.dart';

class Login extends StatefulWidget {
  final Auth auth ;
  final VoidCallback loginCallback;
  final String test;
  Login({this.auth, this.loginCallback, this.test});

  _Login createState() => _Login();
}

class _Login extends State<Login> {
  bool obsecureText = true;
  String username;
  String password;
  String _errorMessage;
  bool _isLoginForm;
  bool _isLoading;
  Auth auth = new Auth();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _errorMessage = "";
    _isLoading = false;
    _isLoginForm = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget _username() {
      return Container(
        padding: EdgeInsets.fromLTRB(10, 3, 4, 3),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xff3C3B40), borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          style: TextStyle(color: Colors.white),
          validator: (String value) {
            if (value.isEmpty) {
              return "Username is required";
            }
            return null;
          },
          onChanged: (String value) {
            username = value;
          },
          decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            icon: Icon(
              Icons.email,
              color: Colors.white,
            ),
            hintText: "Username",
          ),
        ),
      );
    }

    Widget _showCircularProgress(){
      if(_isLoading){
        return Center(child: CircularProgressIndicator(),);
      }

    }

    Widget _password() {
      return Container(
        padding: EdgeInsets.fromLTRB(10, 3, 4, 3),
        decoration: BoxDecoration(
            color: Color(0xff3C3B40),
            borderRadius: BorderRadius.horizontal(
                right: Radius.circular(10), left: Radius.circular(10))),
        child: TextFormField(
          style: TextStyle(color: Colors.white),
          validator: (String value) {
            if (value.isEmpty) {
              return "Password is required";
            }
            return null;
          },
          onChanged: (String value) {
            password = value;
          },
          obscureText: obsecureText,
          decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.white),
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    obsecureText = !obsecureText;
                  });
                },
                child: obsecureText
                    ? Icon(
                        Icons.visibility,
                        color: Colors.white,
                      )
                    : Icon(
                        Icons.visibility_off,
                        color: Colors.white,
                      )),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            icon: Icon(
              Icons.lock,
              color: Colors.white,
            ),
            hintText: "Password",
          ),
        ),
      );
    }



    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff169E65),
      ),
      body: Container(
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 150,
                    ),
                    _username(),
                    SizedBox(
                      height: 30,
                    ),
                    _password(),
                    SizedBox(
                      height: 30,
                    ),
                    Button(
                        title: "Login",
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            validateAndSubmit();
                            print("klsaldkj");
                          }
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                      "Forgot your Password",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
                    SizedBox(
                      height: 55,
                    ),
                    Center(
                        child: Text(
                      "Don't have an account? Create one",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool validateAndSave(){
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      return true;
    }
    else{
      return false;
    }
  }

  void validateAndSubmit() async{
    setState(() {
      _errorMessage = "";
      _isLoading = true;
    });

    if(validateAndSave()){
      String userId = "";
      try{
        if(_isLoginForm){
          userId = await widget.auth.signIn(username, password);
          print("sadf"+userId);
        }else{
          userId = await widget.auth.signUp(username, password);
        }
        setState(() {
          _isLoading = false;
        });

        if(userId.length>0 && userId!=null && _isLoginForm){
          widget.loginCallback();
          Navigator.pop(context);
        }

      }catch(e){
          print("error: "+ e.toString());
          _isLoading = false;
          _errorMessage = e.message;
          _formKey.currentState.reset();
      }
    }
  }
}
