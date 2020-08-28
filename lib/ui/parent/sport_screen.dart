import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//main() => runApp(MaterialApp(home: SportScreen()));

class SportScreen extends StatefulWidget {
  _SportScreen createState() => _SportScreen();
}

class _SportScreen extends State<SportScreen> {
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
                "Select your favorite",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
              Text(
                "sports",
                style: TextStyle(color: Colors.white, fontSize: 18),
              )
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
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
            color: Color(0xff302F36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(4, 5, 2, 0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Rugby",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[Icon(Icons.account_circle, size: 40,color: Colors.white,)],
                  ),
                )
              ],
            ));
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
            sportsSelection(),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        backgroundColor: Color(0xff3C3B40),
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
