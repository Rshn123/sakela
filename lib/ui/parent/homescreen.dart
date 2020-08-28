import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//main() => runApp(MaterialApp(home: HomeScreen()));

class HomeScreen extends StatefulWidget {
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  String search;
  int _selectionIndex = 0;
  Widget _buildHeader() {
    return Container(
      margin: EdgeInsets.fromLTRB(24, 40, 24, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                "https://gmpfinancial.com.au/wp-content/uploads/2014/12/pp-size-crop-3287.jpg"),
          ),
          SizedBox(),
          Container(
            decoration: BoxDecoration(color: Color(0xff0D0D0D)),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.6,
              margin: EdgeInsets.fromLTRB(10, 0, 5, 0),
              padding: EdgeInsets.fromLTRB(10, 0, 4, 0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xff3C3B40),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: TextFormField(
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Search";
                  }
                  return null;
                },
                onChanged: (String value) {
                  search = value;
                },
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: "Username",
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            decoration:
                BoxDecoration(color: Colors.black12, shape: BoxShape.circle),
            child: Center(
                child: Text(
              "...",
              style: TextStyle(color: Colors.white, fontSize: 30),
            )),
          )
        ],
      ),
    );
  }

  Widget _buildFeedWithImage() {
    return Container(
      margin: EdgeInsets.fromLTRB(18, 10, 18, 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          color: Color(0xff3C3B40)),
      child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.add_circle,
                        color: Colors.white,
                      ),
                      Text(
                        "NBA",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.watch,
                        color: Colors.white,
                      ),
                      Text(
                        "3hr ago",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Text(
                    "Curry score 23 in return but Warriors fail to Rapptors",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
        Image.network(
            "https://gmsrp.cachefly.net/images/19/05/05/7e01f728457b203f4fe3fdf1770454e1/960.jpg"),
        Container(
          color: Colors.greenAccent,
          height: 5,
        )
      ]),
    );
  }

  Widget _newsAndSeeAll() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 1, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("NEWS",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
                Text(
                  "SEE ALL",
                  style: TextStyle(fontSize: 10, color: Colors.white30),
                )
              ],
            ),
          ),
          
          new Divider(color: Colors.white),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Card(
                    color: Color(0xff0D0D0D),
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "13:46",
                              style: TextStyle(
                                  fontSize: 11, color: Colors.white70),
                            )),
                        Container(
                            child: Flexible(
                          child: Text(
                            "Bastian Schweinsteiger scores to cap Bayern Munich texstimonial",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                            textAlign: TextAlign.justify,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 10,
                          ),
                        )),
                      ],
                    ));
              })
        ],
      ),
    );
  }

  Widget _events() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 1, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("EVENTS",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
                Text(
                  "SEE ALL",
                  style: TextStyle(fontSize: 10, color: Colors.white30),
                )
              ],
            ),
          ),
          new Divider(color: Colors.white),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              physics:AlwaysScrollableScrollPhysics()  ,
              itemBuilder: (context, index) {
                return Card(
                    color: Color(0xff0D0D0D),
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.fromLTRB(15, 0, 0, 15),
                              child: Row(children: <Widget>[
                                Icon(
                                  Icons.account_circle,
                                  color: Colors.white70,
                                  size: 35,
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Text("Real Madrid",
                                        style:
                                            TextStyle(color: Colors.white70))),
                              ])),
                          Container(
                              margin: EdgeInsets.fromLTRB(15, 0, 0, 15),
                              child: Row(children: <Widget>[
                                Icon(
                                  Icons.account_circle,
                                  color: Colors.white70,
                                  size: 35,
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Text("PSG",
                                        style:
                                            TextStyle(color: Colors.white70))),
                              ])),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(40, 10, 0, 10),
                          decoration: BoxDecoration(
                              color: Color(0xff3C3B40),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "2",
                                    style: TextStyle(color: Colors.white),
                                  )),
                              Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Text(
                                    "2",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ],
                          ))
                    ]));
              })
        ],
      ),
    );
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff0D0D0D),
//    backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          _buildHeader(),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                _buildFeedWithImage(),
                _newsAndSeeAll(),
                _events()
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Color(0xff3C3B40),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Color(0xff3C3B40),
              icon: Icon(Icons.home, size: 30, color: Colors.white),
              title: Text("")),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
              color: Colors.white,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              size: 30,
              color: Colors.white,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30,
              color: Colors.white,
            ),
            title: Text(""),
          ),
        ],
        currentIndex: _selectionIndex,
        onTap: (int index){
          setState(() {
            _selectionIndex = index;
            print(index);
          });
        },
      ),
    );
  }
}

