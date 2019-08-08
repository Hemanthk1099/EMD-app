import 'package:flutter/material.dart';
import 'package:test3/components/button.dart';
import 'listen.dart';
import 'look.dart';
class AFeel extends StatefulWidget {
  @override
  _AFeelState createState() => _AFeelState();
}

class _AFeelState extends State<AFeel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feel"),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[

              Expanded(child: Btn(text: "Look",onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) =>
                    new ALook())
                );
              },)),
              Expanded(child: Btn(text: "Listen",onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) =>
                    new AListen())
                );
              },)),
              // SizedBox(width:18 ),
              Expanded(child: Btn(text: "Feel",onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) =>
                        AFeel())
                );
              },)),
            ],
          )
        ],
      ),
    );

  }
}
