import 'package:flutter/material.dart';

//main() => runApp(MaterialApp(home: EventScreen()));

class EventScreen extends StatefulWidget {
  _EventScreen createState() => _EventScreen();
}

class _EventScreen extends State<EventScreen> {
  Widget _searchBox() {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 2, 0),
      margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
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
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            hintText: "Search your favorite sport"),
      ),
    );
  }

  Widget _heading() {
    return Container(
      margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: Row(
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
                  "Select your favorite",
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
      ),
    );
  }

  Widget _events() {
    return Container(
      height: MediaQuery.of(context).size.height/1.79,
      child: ListView.builder(shrinkWrap:true,itemCount:20,itemBuilder: (context,index){
        return Card(
          color: Color(0xff0D0D0D),
          child: Column(
            children: <Widget>[
              Padding(padding:EdgeInsets.fromLTRB(25,15,25,15),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.play_circle_filled, color: Colors.white,size: 40,),
                    SizedBox(width: 30,),
                    Padding(padding:EdgeInsets.all(10),child:Text("Premier League", style: TextStyle(color:Colors.white)),)
                  ],
                ),
              ),
              Divider(color:Color(0xff3C3B40) ,)
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
      ),
      body: ListView(
        children: <Widget>[
          _heading(),
          SizedBox(
            height: 25,
          ),
          _searchBox(),
          SizedBox(
            height: 25,
          ),
          _events()
        ],
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
