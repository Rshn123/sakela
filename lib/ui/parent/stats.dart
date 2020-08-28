import "package:flutter/material.dart";
import 'package:sakela/color/color_sets.dart';
import 'package:sakela/widgets/my_drop_down_button.dart';

//main() => runApp(MaterialApp(home: Stats()));

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  String dropDownValue = "Paul Pogba";

  Widget _dropDownPlayerSelection() {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
      decoration: BoxDecoration(
        color: Color(0xff3C3B40),
        borderRadius: BorderRadius.circular(5),
      ),
      child: MyDropDownButton(
        value: dropDownValue,
        labels: ["one", "two", "three"],
        onChanged: (label) {
          setState(() {
            dropDownValue = label;
          });
        },
      ),
    );
  }

  Widget _playerStat() {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, itemcount) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.transparent,
                elevation: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width/2,
                      child: Row(
                        children: <Widget>[
                          Text(
                            (itemcount+1).toString(),
                            style: TextStyle(color: ColorSets.textColor, fontSize: 15),
                          ),
                          SizedBox(width: 15,),
                          CircleAvatar(radius: 30,backgroundImage: NetworkImage("https://gmpfinancial.com.au/wp-content/uploads/2014/12/pp-size-crop-3287.jpg"),),
                          SizedBox(width: 15,),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Paul Pogba", style: TextStyle(fontSize: 15, color: ColorSets.textColor),),
                                Text("Machester United", style: TextStyle(fontSize: 13, color: Color.fromRGBO(255, 255, 255, 0.5)),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                        _text("222"),
                        SizedBox(width: 50,),
                        _text("44"),

                      ],),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget _text(String text) {
    return Text(
      text,
      style: TextStyle(color: ColorSets.textColor),
    );
  }

  Widget _playerStatHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text(
              "Players",
              style: TextStyle(color: ColorSets.textColor, fontSize: 18),
            )),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Row(
            children: <Widget>[
              _text("Games"),
              SizedBox(
                width: 15,
              ),
              _text("Goals"),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSets.backgroundColor,
      appBar: AppBar(
        backgroundColor: ColorSets.backgroundColor,
        title: Center(child: Text("Top players")),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: Column(
          children: <Widget>[
            _dropDownPlayerSelection(),
            SizedBox(
              height: 30,
            ),
            _playerStatHeader(),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            _playerStat()
          ],
        ),
      ),
    );
  }
}
