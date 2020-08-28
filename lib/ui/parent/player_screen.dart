import 'package:flutter/material.dart';

//main() => runApp(MaterialApp(home: PlayerScreen()));


class PlayerScreen extends StatefulWidget {
  _PlayerScreen createState() => _PlayerScreen();
}

class _PlayerScreen extends State<PlayerScreen> {
  bool selected = false;
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
            hintStyle: TextStyle(
              color: Colors.white,
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
                "Select your favorite",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
              Text(
                "player",
                style: TextStyle(color: Colors.white, fontSize: 18),
              )
            ],
          ),
        ),
        Align(
            alignment: Alignment.bottomRight,
            child: Icon(
              Icons.add_circle,

              color: Color(0xff169E65),
              size: 40,
            ))
      ],
    );
  }

  Widget _sportsSelection() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 7.0, mainAxisSpacing: 40.0),
      itemBuilder: (context, item) {
        return Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            color: Color(0xff302F36),
            child: !selected?Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(4, 5, 2, 0),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          "Antoine Griezmaan",
                          textAlign: TextAlign.justify,
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ):Stack(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(4, 5, 2, 0),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              "Antoine Griezmaan",
                              textAlign: TextAlign.justify,
                              style: TextStyle(color: Color(0xff169E65)),
                            ),
                          )
                        ],
                      ),
                    ),
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
            ));
      },
      itemCount: 100,
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
        margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: <Widget>[_heading(), SizedBox(height: 30,), _searchBox(),SizedBox(height: 50,), Expanded(child: _sportsSelection())],
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
              SizedBox(

                child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  onPressed: () {},
                  child: Padding( padding: EdgeInsets.fromLTRB(5, 10, 5, 10),child: Text("GO TO FEED", style: TextStyle(color: Colors.white),)),
                  color: Color(0xff169E65),
                ),

              )
            ],
          ),
        )
    );
  }
}
