import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../color/color_sets.dart';
main() => runApp(MaterialApp(home: PlayerProfile()));

class PlayerProfile extends StatefulWidget {
  _PlayerProfile createState() => _PlayerProfile();
}

class _PlayerProfile extends State<PlayerProfile> {
  Widget _playerImage() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.network(
              "https://i.pinimg.com/originals/72/d7/57/72d757a327587b98b1ad1e8f51a7288f.jpg"),
        ));
  }

  Widget _playerNameAndLogo() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      width: MediaQuery.of(context).size.width,
      height: 260,
      child: Stack(
        children: <Widget>[
          Positioned(
              child: Icon(
            Icons.add_circle,
            color: ColorSets.textColor,
            size: 40,
          )),
          Positioned(
            left: 25,
            child: Icon(
              Icons.add_circle,
              color: Colors.red,
              size: 40,
            ),
          ),
          Positioned(
              top: 40,
              child: Text(
                "Ronaldo",
                style: TextStyle(fontSize: 40, color: ColorSets.textColor),
              ))
        ],
      ),
    );
  }

  Widget _containerBelowImage(String upperText, String lowerText) {
    return Container(
      padding: EdgeInsets.all(6),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(49, 47, 63, 0.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                upperText,
                style: TextStyle(color: ColorSets.textColor, fontSize: 10),
              )),
          Align(
              alignment: Alignment.bottomRight,
              child: Text(
                lowerText,
                style:
                    TextStyle(color: ColorSets.textColor, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }

  Widget _playerJerseyAndPosition() {
    return Positioned(
      top: 130,
      left: 10,
      child: Row(
        children: <Widget>[
          Icon(
            Icons.keyboard,
            size: 40,
            color: ColorSets.textColor,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "FORWARD",
            style: TextStyle(color: ColorSets.textColor),
          )
        ],
      ),
    );
  }

  Widget _belowImageContainer() {
    return Positioned(
      top: 180,
      right: 1,
      left: 10,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _containerBelowImage("Age", "33"),
            _containerBelowImage("Games", "14"),
            _containerBelowImage("Goals", "33"),
          ],
        ),
      ),
    );
  }

  Widget _titleText(String text) {
    return Text(
      text,
      style: TextStyle(color: ColorSets.textColorOpacity, fontSize: 16),
    );
  }

  Widget _belowTitleText(String text) {
    return Text(
      text,
      style: TextStyle(color: ColorSets.textColor),
    );
  }

  Widget _footballRoleAndJersey() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 25, 0),
      child: Column(
        children: <Widget>[
          Container(
              height: 240,
              child: RotationTransition(
                turns: AlwaysStoppedAnimation(180 / 360),
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.network(
                      "https://fsb.zobj.net/crop.php?r=ooEcxGj3v30LMv0RiCl33ZTszqT3CV1GhFsEXQgmZI8LxvoHxsWj4faRY88PAOgnijn96vyJCj107OvXXyo8xt3iMzR7u9uUEmcp1yHdaOHNHz9XlpO9haF5aC8F_IhX1ej_jJT_dsALhocY"),
                ),
              ))
        ],
      ),
    );
  }

  Widget _playerInfo() {
    return Container(
      child: Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _titleText("Full name"),
            SizedBox(height: 3,),
            _belowTitleText("Cristano Ronaldo"),
            SizedBox(height: 15,),
            _titleText("Place of Birth"),
            SizedBox(height: 3,),
            _belowTitleText("Ramechaap, Nepal"),
            SizedBox(height: 10,),
            _titleText("Date of Birth"),
            SizedBox(height: 5,),
            _belowTitleText("2054-05-14"),
            SizedBox(height: 10,),
            _titleText("Height"),
            SizedBox(height: 5,),
            _belowTitleText("1.74cm"),
            SizedBox(height: 10,),
            _titleText("Weight"),
            SizedBox(height: 5,),
            _belowTitleText("75.4kg"),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: ColorSets.backgroundColor,
      appBar: AppBar(
        backgroundColor:ColorSets.backgroundColor,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(15, 50, 15, 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    _playerImage(),
                    _playerNameAndLogo(),
                    _playerJerseyAndPosition(),
                    _belowImageContainer()
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[_footballRoleAndJersey(), SizedBox(width: 17,), _playerInfo()],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
