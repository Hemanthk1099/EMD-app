import 'package:flutter/material.dart';
import 'package:test3/components/button.dart';
import 'listen.dart';
import 'feel.dart';
import 'home.dart';

bool swelling = false, deformity = false, injuries = false, others = false;
bool secretions =false,vomiting =false,blood =false,tooth = false;
bool patency = false;
bool use = false, fb = false, st = false;
bool v1 = false, v2 =false;
bool s1 =false, s2=false;

bool chinlift =false,headtilt = false,jawthrust = false;
bool suction = false;
String sto = "",fbo = "";

class ALook extends StatefulWidget {
  @override
  _ALookState createState() => _ALookState();
}

class _ALookState extends State<ALook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Airway Look"),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Btn(
                text: "Look",
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new ALook()));
                },
              )),
              Expanded(
                  child: Btn(
                text: "Listen",
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new AListen()));
                },
              )),
              // SizedBox(width:18 ),
              Expanded(
                  child: Btn(
                text: "Feel",
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => AFeel()));
                },
              )),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Btn(
                text: "Patency",
                onPressed: () {
                  setState(() {
                    use = false;
                    patency = true;
                  });
                },
              )),
              Expanded(
                  child: Btn(
                      text: "Obsrtuct",
                      onPressed: () {
                        setState(() {
                          use = true;
                          patency = false;
                        });
                      })),
            ],
          ),
          Visibility(
              visible: use,
              child: Column(
                children: <Widget>[
                  Btn(
                    text: "Soft Tissues",
                    onPressed: () {
                      setState(() {
                        fb = false;
                        st = true;
                      });
                    },
                  ),
                  Btn(
                    text: "Foriegn Bodies",
                    onPressed: () {
                      setState(() {
                        st = false;
                        fb = true;
                      });
                    },
                  )
                ],
              )),

          Visibility(
              visible: st,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                    Container(width: Width, child: Text("Swelling")),
                              ),
                              Checkbox(
                                  value: swelling,
                                  onChanged: (bool val) {
                                    setState(() {
                                      swelling = val;
                                      if(val == true) {
                                        v1 = true;
                                        s2 = true;
                                      }
                                      check();
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
                                child:
                                    Container(width: Width, child: Text("Deformity")),
                              ),
                              Checkbox(
                                  value: deformity,
                                  onChanged: (bool val) {
                                    setState(() {
                                      deformity = val;
                                      if(val == true) {
                                        v1 = true;
                                        s2 = true;
                                      }
                                      check();
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
                                child: Container(width: Width, child: Text("Injury")),
                              ),
                              Checkbox(
                                  value: injuries,
                                  onChanged: (bool val) {
                                    setState(() {
                                      injuries = val;
                                      if(val == true) {
                                        v1 = true;
                                        s2 = true;
                                      }
                                      check();
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Visibility(
                          visible: v1,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                          child: Text(
                                            "Head Tilt",
                                          ),
                                          width: Width),
                                    ),
                                    Checkbox(
                                        value: headtilt,
                                        onChanged: (bool val) {
                                          setState(() {
                                            headtilt = val;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                          child: Text(
                                            "Chin Lift",
                                          ),
                                          width: Width),
                                    ),
                                    Checkbox(
                                        value: chinlift,
                                        onChanged: (bool val) {
                                          setState(() {
                                            chinlift = val;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(4),
                                      child: Container(
                                          child: Text(
                                            "Jaw Thrust",
                                          ),
                                          width: Width),
                                    ),
                                    Checkbox(
                                        value: jawthrust,
                                        onChanged: (bool val) {
                                          setState(() {
                                            jawthrust = val;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),

         Visibility(
              visible: fb,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                              Container(width: Width, child: Text("Secretions")),
                            ),
                            Checkbox(
                                value: secretions,
                                onChanged: (bool val) {
                                  setState(() {
                                    secretions = val;
                                    if(val == true) {
                                      s1 = val;
                                      v2 = val;
                                    }
                                    check1();
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
                              child:
                              Container(width: Width, child: Text("Vomiting")),
                            ),
                            Checkbox(
                                value: vomiting,
                                onChanged: (bool val) {
                                  setState(() {
                                    vomiting = val;
                                    if(val == true) {
                                      s1 = val;
                                      v2 = val;
                                    }
                                    check1();
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
                              child: Container(width: Width, child: Text("Blood loss")),
                            ),
                            Checkbox(
                                value: blood,
                                onChanged: (bool val) {
                                  setState(() {
                                    blood = val;
                                    if(val == true) {
                                      s1 = val;
                                      v2 = val;
                                    }
                                    check1();
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
                              child:
                              Container(width: Width, child: Text("Tooth")),
                            ),
                            Checkbox(
                                value: tooth,
                                onChanged: (bool val) {
                                  setState(() {
                                    tooth = val;
                                    if(val == true) {
                                      s1 = val;
                                      v2 = val;
                                    }
                                    check1();
                                  });
                                }),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Visibility(
                        visible: s1,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Container(
                                        child: Text(
                                          "Suction",
                                        ),
                                        width: Width),
                                  ),
                                  Checkbox(
                                      value: suction,
                                      onChanged: (bool val) {
                                        setState(() {
                                          suction = val;
                                        });
                                      }),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )),
          Visibility(
            visible: s2,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(decoration: InputDecoration(hintText: "Others"),
                  onChanged: (String val)
                  {
                    sto = val;
                  }),
            ),
          ),
          Visibility(
            visible: v2,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(decoration: InputDecoration(hintText: "Others"),
              onChanged: (String val)
                {
                  fbo = val;
                },),
            ),
          ),
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
  void check()
  {
    if(swelling == false && deformity == false && finjury == false){
      v1 = false;
      headtilt = false;
      chinlift = false;
      jawthrust = false;
      s2 = false;
  }}
  void check1()
  {
    if(secretions == false && vomiting == false && blood == false &&tooth == false)
      {
        s1 = false;
        suction = false;
        v2 = false;
      }
  }
}