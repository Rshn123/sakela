import 'package:flutter/material.dart';

//main() => runApp(MaterialApp(home: NewSportScreen()));

class NewSportScreen extends StatefulWidget {
  _NewSportScreen createState() => _NewSportScreen();
}

class _NewSportScreen extends State<NewSportScreen> {
  String dropDownValue = "Indoor";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff0D0D0D),
      appBar: AppBar(
        backgroundColor: Color(0xff0D0D0D),
        title: Center(
          child: Text(
            "Your new sport",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
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
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                        decoration: BoxDecoration(
                          color: Color(0xff3C3B40),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextField(
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
                  SizedBox(height: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Category",
                        style: TextStyle(color: Colors.white70),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                        decoration: BoxDecoration(
                          color: Color(0xff3C3B40),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: DropdownButton<String>(
                          hint: Text(
                            dropDownValue,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white
                            ),
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
                  )

                ],
              ),
            )
      ),
      bottomNavigationBar:Container(
        margin:EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: RaisedButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: EdgeInsets.all(14),
              child: Text("CONFIRM", style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
              ),),
            ),
            color: Color(0xff169E65),
            onPressed: () {
          },
          ),
        ),
      ),


    );
  }
}
