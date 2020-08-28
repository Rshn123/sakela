import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//main() => runApp(MaterialApp(home: SpSetting()));


class SpSetting extends StatefulWidget{
  _SpSetting createState() => _SpSetting();
}

class _SpSetting extends State<SpSetting>{

  Widget _circleAvatar(){
    return Container(
      margin: EdgeInsets.fromLTRB(30, 0, 10, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage(
                "https://gmpfinancial.com.au/wp-content/uploads/2014/12/pp-size-crop-3287.jpg"),
          ),
          SizedBox(height:10 ,),
          Text("Bohan Kononets", style: TextStyle(color: Colors.white, fontSize: 20),),
          SizedBox(height:10 ,),
          Text("@bohan208", style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5), fontSize: 18),)
        ],
      ),
    );

  }

  Widget _settings(){
    return Container(
      margin: EdgeInsets.fromLTRB(30, 0, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container( width:40, height:50,decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xff3C3B40),
              ), child: Icon(Icons.person, color: Colors.white,)),
              SizedBox(width: 30,),
              Text("Profile", style: TextStyle(color: Colors.white, fontSize: 18),)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Container( width:40, height:50,decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xff3C3B40),
              ), child: Icon(Icons.people, color: Colors.white,)),
              SizedBox(width: 30,),
              Text("My Teams", style: TextStyle(color: Colors.white, fontSize: 18),)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Container( width:40, height:50,decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xff3C3B40),
              ), child: Icon(Icons.event, color: Colors.white,)),
              SizedBox(width: 30,),
              Text("Events", style: TextStyle(color: Colors.white, fontSize: 18),)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Container( width:40, height:50,decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xff3C3B40),
              ), child: Icon(Icons.games, color: Colors.white,)),
              SizedBox(width: 30,),
              Text("Matches", style: TextStyle(color: Colors.white, fontSize: 18),)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Container( width:40, height:50,decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xff3C3B40),
              ), child: Icon(Icons.question_answer, color: Colors.white,)),
              SizedBox(width: 30,),
              Text("About and FAQ", style: TextStyle(color: Colors.white, fontSize: 18),)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Container( width:40, height:50,decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xff3C3B40),
              ), child: Icon(Icons.settings, color: Colors.white,)),
              SizedBox(width: 30,),
              Text("Settings", style: TextStyle(color: Colors.white, fontSize: 18),)
            ],
          ),
          SizedBox(height: 10,),
          Padding( padding:EdgeInsets.all(10),child: Text("Log Out", style: TextStyle(color: Colors.white, fontSize: 18),)),
          SizedBox(height: 50,),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor:Color(0xff0D0D0D),
      appBar: AppBar(backgroundColor:Color(0xff0D0D0D) ,),
      body: ListView(
        children: <Widget>[
          _circleAvatar(),
          SizedBox(height: 40,),
          _settings(),
        ],
      ),
    );
  }
}