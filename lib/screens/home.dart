import 'package:flutter/material.dart';
import 'package:test3/components/button.dart';
import 'airway.dart';
import 'breathing.dart';
import 'circulation.dart';

class Home extends StatefulWidget {
  static String id = "home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 200),
        child: ListView(
          children: <Widget>[
            Btn(
              text: "Airway",
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new Airway()));
              },
            ),
            Btn(text: "Breathing",onPressed: (){
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new Breathe()));
            },),
            Btn(text: "Circulation",onPressed: (){
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new Circulation()));
            },),
          ],
        ),
      ),
    );
  }
}
