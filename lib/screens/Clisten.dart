import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:test3/components/button.dart';
import 'Clook.dart';
import 'listen.dart';
import 'Cfeel.dart';
class CListen extends StatefulWidget {
  static String id = "breathing";
  @override
  CListenState createState() => CListenState ();
}

class  CListenState extends State<CListen> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("CListen"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[

                Expanded(child: Btn(text: "Look",onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                  new CLook())
                  );
                },)),
                Expanded(child: Btn(text: "Listen",onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                      new CListen())
                  );
                },)),
                // SizedBox(width:18 ),
                Expanded(child: Btn(text: "Feel",onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                      new Cfeel())
                  );
                },)),
              ],
            ),
          ],
        ),
      );

  }
}
