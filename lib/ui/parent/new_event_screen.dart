import 'package:flutter/material.dart';

//main() => runApp(MaterialApp(home: EventScreen()));

class EventScreen extends StatefulWidget {
  _EventScreen createState() => _EventScreen();
}

class _EventScreen extends State<EventScreen> {
  String dropDownValue = "Milano Academy" + "\n" + "\n" + "10:00-10:100";

  Widget _textFields() {
    return Container(
        child: Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Sport Name",
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
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
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Category",
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                decoration: BoxDecoration(
                  color: Color(0xff3C3B40),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  maxLines: 4,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }

  Widget _sendNotificationSwitch() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
              child: Text(
            "Send me an email notificaton",
            style: TextStyle(fontSize: 16, color: Colors.white),
          )),
          Container(
            child: Switch(
              activeTrackColor: Color(0xff169E65),
              activeColor: Colors.white,
              inactiveTrackColor: Colors.white,
              value: true,
              onChanged: (bool value) {},
            ),
          )
        ],
      ),
    );
  }

  Widget _academyDropDown() {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xff3C3B40),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                width: 70,
                height: 90,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: Image.network(
                      "https://gmpfinancial.com.au/wp-content/uploads/2014/12/pp-size-crop-3287.jpg"),
                )),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: DropdownButton<String>(
                itemHeight: 80,
                hint: Text(
                  dropDownValue,
                  style:
                      TextStyle(fontFamily: 'Montserrat', color: Colors.white),
                ),
                isExpanded: true,
                elevation: 16,
                underline: Container(
                  height: 0,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    dropDownValue = newValue;
                  });
                },
                items: <String>[
                  "English II",
                  "Social",
                  "EPH",
                  "Science",
                  "C.Math",
                  "Opt.Math",
                  "Nepali",
                  "English I"
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ));
  }

  Widget _invitePlayers() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Invite Players",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        Text(
          "(3/10)",
          style: TextStyle(fontSize: 12, color: Colors.white),
        )
      ],
    );
  }

  Widget _invitedPlayers() {
    return Container(
      height: 200,
      color: Color(0xff0D0D0D),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 60),
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              color: Color(0xff0D0D0D),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 44,
                        height: 44,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                                "https://gmpfinancial.com.au/wp-content/uploads/2014/12/pp-size-crop-3287.jpg")),
                      ),
                      SizedBox(width: 10,),
                      Text("Jordan Ntolo", style: TextStyle(color: Colors.white),)
                    ],
                  ),

                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                          color:Color(0xff169E65),
                          shape: BoxShape.circle
                      ),
                      alignment: Alignment.center,
                      child: Icon(Icons.check, color: Colors.white, size: 12,),
                    ),
                  )


                ],
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff0D0D0D),
      appBar: AppBar(
        backgroundColor: Color(0xff0D0D0D),
        title: Center(
          child: Text(
            "Your new event",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            _textFields(),
            SizedBox(
              height: 15,
            ),
            _academyDropDown(),
            SizedBox(
              height: 15,
            ),
            _sendNotificationSwitch(),
            SizedBox(
              height: 15,
            ),
            _invitePlayers(),
            SizedBox(
              height: 15,
            ),
            _invitedPlayers()
          ],
        ),
      ),
        floatingActionButtonLocation:  FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FloatingActionButton(
                backgroundColor: Color(0xff3C3B40),
                onPressed: () {},
                child: Icon(Icons.arrow_back,),
              ),
              FloatingActionButton(
                backgroundColor: Color(0xff169E65),
                onPressed: () {},
                child: Icon(Icons.arrow_forward,  ),
              )
            ],
          ),
        )
    );
  }
}
