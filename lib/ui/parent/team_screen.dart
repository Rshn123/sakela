import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//main() => runApp(MaterialApp(home: TeamScreen()));

class TeamScreen extends StatefulWidget {
  _TeamScreen createState() => _TeamScreen();
}

class _TeamScreen extends State<TeamScreen>{
  bool clicked= true;
  Widget _searchBox() {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
      decoration: BoxDecoration(
        color: Color(0xff3C3B40),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            hintStyle: TextStyle(color:Colors.white,
            ),
            hintText: "Search your favorite sport"),
      ),
    );
  }

  Widget _heading() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          "        ",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        Center(
          child: Column(
            children: <Widget>[
              Center(
                  child: Text(
                    "Select your team",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ],
          ),
        ),
        Align(
            alignment: Alignment.bottomRight,
            child: Icon(
              Icons.add_circle,
              color: Colors.green,
              size: 40,
            ))
      ],
    );
  }

  Widget sportsSelection() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 7.0, mainAxisSpacing: 6.0),
      itemBuilder: (context, item) {
        return Container(
          decoration:clicked? BoxDecoration(shape: BoxShape.circle,border:Border.all(color: Colors.green,
            width: 1.5
          )
          ):null,
              child:clicked?Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[Icon(Icons.account_circle, size: 40,color: Colors.white,)],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(17, 0, 0, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Real Madrid",
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 23,
                      height: 23,
                      decoration: BoxDecoration(
                        color:Colors.green,
                        shape: BoxShape.circle
                      ),
                      alignment: Alignment.center,
                      child: Icon(Icons.check, color: Colors.white, size: 15,),
                    ),
                  )

                ],
              ): Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[Icon(Icons.account_circle, size: 40,color: Colors.white,)],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Real Madrid",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
        );
      },
      itemCount: 9,
      shrinkWrap: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff0D0D0D),
      appBar: AppBar(
        backgroundColor: Color(0xff0D0D0D),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(12, 3, 12, 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _heading(),
            SizedBox(
              height: 25,
            ),
            _searchBox(),
            SizedBox(
              height: 15,
            ),
            Expanded(child: sportsSelection()),

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
        )    );
  }
}
