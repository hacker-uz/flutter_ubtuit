import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/services.dart';

import 'data/week_list_ui.dart';

void main() => runApp(new MyApp());

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(5, 145, 252, 0.6), //or set color with: Color(0xFF0000FF)
    ));

    return SafeArea(
        child: Scaffold(
      appBar: new AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            tooltip: "Search group",
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            tooltip: "Refresh DataBase",
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                "TUIT UB",
                textAlign: TextAlign.justify,
                textScaleFactor: 2.0,
              ),
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            ),
            ListTile(
              title: Text("Teachers"),
              leading: Icon(Icons.people),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 6,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                backgroundColor: Colors.lightBlueAccent,
                unselectedBackgroundColor: Colors.grey[300],
                unselectedLabelStyle: TextStyle(color: Colors.black),
                labelStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    icon: Icon(Icons.looks_one),
                    text: "Monday",
                  ),
                  Tab(
                    icon: Icon(Icons.looks_two),
                    text: "Tuesday",
                  ),
                  Tab(
                    icon: Icon(Icons.looks_3),
                    text: "Wednesday",
                  ),
                  Tab(
                    icon: Icon(Icons.looks_4),
                    text: "Thursday",
                  ),
                  Tab(
                    icon: Icon(Icons.looks_5),
                    text: "Friday",
                  ),
                  Tab(
                    icon: Icon(Icons.looks_6),
                    text: "Saturday",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Center(
                      child: WeekList(),
                    ),
                    Center(
                      child: Icon(Icons.directions_car),
                    ),
                    Center(
                      child: Icon(Icons.directions_car),
                    ),
                    Center(
                      child: Icon(Icons.directions_car),
                    ),
                    Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    Center(
                      child: Icon(Icons.directions_bike),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(title: "TUIT UB"),
    );
  }
}
