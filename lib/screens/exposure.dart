import 'package:flutter/material.dart';
import 'package:test3' '/components/button.dart';
import 'listen.dart';
import 'look.dart';
import 'feel.dart';
import 'home.dart';
class exposure extends StatefulWidget {
  @override
  _exposureState createState() => _exposureState();
}

List<bool> impbox = [false, false, false, false, false, false, false, false];
String deformities;
String nature;
String Contusions;
String Abrasions;
String Punctures;
String Burns;
String Tenderness;
String Lacerations;
String Swelling;
String Back;
String Chest;
String Abdomen;
String nose;
String skull;
String Extremities;
String Spine;
String Pelvis;

bool hearyes = false;
bool hearno = false;
bool visualyes = false;
bool visualno = false;

class _exposureState extends State<exposure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exposure")),
      body: ListView(
        children: <Widget>[
          Container(
              child: Text("Hearing problem",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ))),
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(width: Width, child: Text("Yes")),
                      ),
                      Checkbox(
                          value: hearyes,
                          onChanged: (bool val) {
                            setState(() {
                              hearyes = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(width: Width, child: Text("NO")),
                      ),
                      Checkbox(
                          value: hearno,
                          onChanged: (bool val) {
                            setState(() {
                              hearno = val;
                            });
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              child: Text("Visual impairments",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ))),
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(width: Width, child: Text("Yes")),
                      ),
                      Checkbox(
                          value: visualyes,
                          onChanged: (bool val) {
                            setState(() {
                              visualyes = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(width: Width, child: Text("NO")),
                      ),
                      Checkbox(
                          value: visualno,
                          onChanged: (bool val) {
                            setState(() {
                              visualno = val;
                            });
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(20.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.local_hospital),
                      hintText: 'Deformities?',
                      labelText: 'Deformities',
                    ),
                    onChanged: (String value) {
                      deformities = value;
                    },
                  )
                ],
              )),
          Container(
              padding: const EdgeInsets.all(20.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.local_hospital),
                      hintText: 'Contusions',
                      labelText: 'contusions',
                    ),
                    onChanged: (String value) {
                      Contusions = value;
                    },
                  )
                ],
              )),
          Container(
              padding: const EdgeInsets.all(20.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.local_hospital),
                      hintText: 'Abrasions',
                      labelText: 'Abrasions',
                    ),
                    onChanged: (String value) {
                      Abrasions = value;
                    },
                  )
                ],
              )),
          Container(
              padding: const EdgeInsets.all(20.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.local_hospital),
                      hintText: 'Punctures?',
                      labelText: 'Punctures',
                    ),
                    onChanged: (String value) {
                      Punctures = value;
                    },
                  )
                ],
              )),
          Container(
              padding: const EdgeInsets.all(20.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.local_hospital),
                      hintText: 'Burns',
                      labelText: 'Burns',
                    ),
                    onChanged: (String value) {
                      Burns = value;
                    },
                  )
                ],
              )),
          Container(
              padding: const EdgeInsets.all(20.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.local_hospital),
                      hintText: 'Tenderness',
                      labelText: 'Tenderness',
                    ),
                    onChanged: (String value) {
                      Tenderness = value;
                    },
                  )
                ],
              )),
          Container(
              padding: const EdgeInsets.all(20.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.local_hospital),
                      hintText: 'Lacerations',
                      labelText: 'Lacerations',
                    ),
                    onChanged: (String value) {
                      Lacerations = value;
                    },
                  )
                ],
              )),
          Container(
              padding: const EdgeInsets.all(20.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.local_hospital),
                      hintText: 'Swelling',
                      labelText: 'Swelling',
                    ),
                    onChanged: (String value) {
                      Swelling = value;
                    },
                  )
                ],
              )),
          Container(
              child: Text("Focused assesment",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ))),
          Column(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(20.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.local_hospital),
                          hintText: 'Chest',
                          labelText: 'Chest',
                        ),
                        onChanged: (String value) {
                          Chest = value;
                        },
                      )
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.all(20.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.local_hospital),
                          hintText: 'Abdomen',
                          labelText: 'Abdomen',
                        ),
                        onChanged: (String value) {
                          Abdomen = value;
                        },
                      )
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.all(20.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.local_hospital),
                          hintText: 'Pelvis',
                          labelText: 'Pelvis',
                        ),
                        onChanged: (String value) {
                          Pelvis = value;
                        },
                      )
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.all(20.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.local_hospital),
                          hintText: 'Extremities?',
                          labelText: 'Extremities',
                        ),
                        onChanged: (String value) {
                          Extremities = value;
                        },
                      )
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.all(20.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.local_hospital),
                          hintText: 'nose',
                          labelText: 'nose',
                        ),
                        onChanged: (String value) {
                          nose = value;
                        },
                      )
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.all(20.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.local_hospital),
                          hintText: 'skull',
                          labelText: 'skull',
                        ),
                        onChanged: (String value) {
                          skull = value;
                        },
                      )
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.all(20.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.local_hospital),
                          hintText: 'Spine',
                          labelText: 'Spine',
                        ),
                        onChanged: (String value) {
                          Spine = value;
                        },
                      )
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.all(20.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.local_hospital),
                          hintText: 'Back',
                          labelText: 'Back',
                        ),
                        onChanged: (String value) {
                          Back = value;
                        },
                      )
                    ],
                  )),
            ],
          ),
          Container(
              child: Text("Impression box",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ))),
          Container(
              child: Text(
                  "Is the current treatment improving the patient’s condition?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ))),
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(width: Width, child: Text("Yes")),
                      ),
                      Checkbox(
                          value: impbox[0],
                          onChanged: (bool val) {
                            setState(() {
                              impbox[0] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(width: Width, child: Text("NO")),
                      ),
                      Checkbox(
                          value: impbox[1],
                          onChanged: (bool val) {
                            setState(() {
                              impbox[1] = val;
                            });
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              child: Text("Has an already identified problem gotten better?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ))),
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(width: Width, child: Text("Yes")),
                      ),
                      Checkbox(
                          value: impbox[2],
                          onChanged: (bool val) {
                            setState(() {
                              impbox[2] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(width: Width, child: Text("NO")),
                      ),
                      Checkbox(
                          value: impbox[3],
                          onChanged: (bool val) {
                            setState(() {
                              impbox[3] = val;
                            });
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              child: Text("Has an already identified problem gotten worse??",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ))),
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(width: Width, child: Text("Yes")),
                      ),
                      Checkbox(
                          value: impbox[4],
                          onChanged: (bool val) {
                            setState(() {
                              impbox[4] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(width: Width, child: Text("NO")),
                      ),
                      Checkbox(
                          value: impbox[5],
                          onChanged: (bool val) {
                            setState(() {
                              impbox[5] = val;
                            });
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(20.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.local_hospital),
                      hintText: 'SIZE',
                      labelText:
                      'What is the nature of any newly identified problems?',
                    ),
                    onChanged: (String value) {
                      nature = value;
                    },
                  )
                ],
              )),
          Btn(
            text: "Home",
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Home()));
            },
          )
        ],
      ),
    );
  }
}