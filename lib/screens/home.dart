import 'package:flutter/material.dart';
import 'package:test3/components/button.dart';
import 'airway.dart';
import 'breathing.dart';
import 'circulation.dart';
import 'getdata.dart';
import 'disability.dart';
import 'exposure.dart';
import 'summary.dart';
import 'package:open_file/open_file.dart';

class Home extends StatefulWidget {
  static String id = "home";
  @override
  _HomeState createState() => _HomeState();
}
String PatientName,symptoms;
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              TextField(decoration: InputDecoration(hintText: "Name of the patient"),
                onChanged: (String val)
                {
                  PatientName = val;
                }),
              TextField(decoration: InputDecoration(hintText: "Symtoms"),
                  keyboardType: TextInputType.multiline,
                  maxLines: 8,
                  onChanged: (String val)
                  {
                    symptoms = val;
                  }),
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
              Btn(
                text: "Disability",
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new disability()));
                },
              ),
              Btn(
                text: "Exposure",
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new exposure()));
                },
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Btn(
                      text: "Mewscore",
                      onPressed: () {
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) => new GetData()));
                      },
                    ),
                  ),
                  Expanded(
                    child: Btn(
                      text: "Generate Summary",
                      onPressed: () {
                        generateSummary();
                        OpenFile.open(pathToPdf);
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
