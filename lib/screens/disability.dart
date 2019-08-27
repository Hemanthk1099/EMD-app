import 'package:flutter/material.dart';
import 'package:test3/components/button.dart';
import 'home.dart';
import 'package:test3/components/checkbox.dart';

class disability extends StatefulWidget {
  @override
  _disabilityState createState() => _disabilityState();
}
bool loc=false,lc=false;
bool pn=false,pn1=false;
String dropdownValue = 'One';
bool pnr=false,pnr1=false;
bool ps=false,ps1=false;
bool tn=false,tn1=false;
bool th=false,th1=false;
bool ti=false,ti1=false;
bool sh=false,mtr=false;
bool r1=false,l1=false,nm=false,anm=false;
bool xxx1 = false;
double Width = 124;


List<List<bool>> xxx = [
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
];

class _disabilityState extends State<disability> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Disability"),
      ),
      body: ListView(
        children: <Widget>[
          Text("Level of Consciousness", textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text(
                        "Level of consiousness",
                      ),
                      width: Width),
                ),
                Checkbox(
                    value: loc,
                    onChanged: (bool val) {
                      setState(() {
                        loc = val;
                        print(val);
                        if (val == true) {
                          lc = true;
                        } else {
                          lc = false;
                        }
                      });
                    }),
              ],
            ),
          ),
          Visibility(
            visible: lc,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Awake and ALert",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[0][0],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[0][0] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Responsive to verbal Stimuli",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[0][1],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[0][1] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Responsive to pain",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[0][2],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[0][2] = val;
                            });
                          }),
                    ],
                  ),
                ), Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "UnResponsive",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx1,
                          onChanged: (bool val) {
                            setState(() {
                              xxx1 = val;
                            });
                          }),
                    ],
                  ),
                ),

                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'GRBS',
                    labelText: 'GRBS',
                  ),
                  onSaved: (String value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String value) {
                    return value.contains('@')
                        ? 'Do not use the @ char.'
                        : null;
                  },
                ),
              ],
            ),
          ),
          Text("Pupil", textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text(
                        "Normal",
                      ),
                      width: Width),
                ),
                Checkbox(
                    value: pn,
                    onChanged: (bool val) {
                      setState(() {
                        pn = val;
                        print(val);
                        if (val == true) {
                          pn1 = true;
                        } else {
                          pn1 = false;
                        }
                      });
                    }),
              ],
            ),
          ),
          Visibility(
            visible: pn1,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Constructed",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[1][0],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[1][0] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Dilated",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[1][1],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[1][1] = val;
                            });
                          }),
                    ],
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text(
                        "Non Reactive",
                      ),
                      width: Width),
                ),
                Checkbox(
                    value: pnr,
                    onChanged: (bool val) {
                      setState(() {
                        pnr = val;
                        print(val);
                        if (val == true) {
                          pnr1 = true;
                        } else {
                          pnr1 = false;
                        }
                      });
                    }),
              ],
            ),
          ),
          Visibility(
            visible: pnr1,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Right",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[2][0],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[2][0] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Left",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[2][1],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[2][1] = val;
                            });
                          }),
                    ],
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text(
                        "Shyguli",
                      ),
                      width: Width),
                ),
                Checkbox(
                    value: ps,
                    onChanged: (bool val) {
                      setState(() {
                        ps = val;
                        print(val);
                        if (val == true) {
                          ps1 = true;
                        } else {
                          ps1 = false;
                        }
                      });
                    }),
              ],
            ),
          ),
          Visibility(
            visible: ps1,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Right",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[3][0],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[3][0] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Left",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[3][1],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[3][1] = val;
                            });
                          }),
                    ],
                  ),
                ),

              ],
            ),
          ), //buttons

          Text("Tone", textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text(
                        "Normal Tone",
                      ),
                      width: Width),
                ),
                Checkbox(
                    value: tn,
                    onChanged: (bool val) {
                      setState(() {
                        tn = val;
                        print(val);
                        if (val == true) {
                          tn1 = true;
                        } else {
                          tn1 = false;
                        }
                      });
                    }),
              ],
            ),
          ),
          Visibility(
            visible: tn1,
            child: Text("Nothing required", textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text(
                        "Hypotomia",
                      ),
                      width: Width),
                ),
                Checkbox(
                    value: th,
                    onChanged: (bool val) {
                      setState(() {
                        th = val;
                        print(val);
                        if (val == true) {
                          th1 = true;
                        } else {
                          th1 = false;
                        }
                      });
                    }),
              ],
            ),
          ),
          Visibility(
            visible: th1,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Central Hypotomia",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[4][0],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[4][0] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Peripheral Hypotomia",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[4][1],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[4][1] = val;
                            });
                          }),
                    ],
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text(
                        "Increased tone",
                      ),
                      width: Width),
                ),
                Checkbox(
                    value: ti,
                    onChanged: (bool val) {
                      setState(() {
                        ti = val;
                        print(val);
                        if (val == true) {
                          ti1 = true;
                        } else {
                          ti1 = false;
                        }
                      });
                    }),
              ],
            ),
          ),
          Visibility(
            visible: ti1,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Spasticity",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[5][0],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[5][0] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Pystonia",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[5][1],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[5][1] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Rigidity",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[5][2],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[5][2] = val;
                            });
                          }),
                    ],
                  ),
                ),

              ],
            ),
          ),
          //Sample History

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                children: <Widget>[
                  Expanded(
                    child: Btn(
                      text: "Sample History",
                      onPressed: () {
                        setState(() {
                          sh = !sh;
                        });
                      },


                    ),
                  ),
                ]
            ),
          ),
          Visibility(
              visible: sh,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Symptoms',
                      labelText: 'Symptoms',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Allergies',
                      labelText: 'Allergies',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Medication',
                      labelText: 'Medication',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Patient medical past history',
                      labelText: 'Patient medical past history',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                  Text("Last oral intake", textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Solid',
                      labelText: 'Solid',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Liquid',
                      labelText: 'Liquid',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Stools',
                      labelText: 'Stools',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Urine',
                      labelText: 'Urine',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'LMP',
                      labelText: 'LMP',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                  Text("Event of Injury", textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Onset',
                      labelText: 'Onset',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Provocation',
                      labelText: 'Provocation',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Quality',
                      labelText: 'Quality',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Region ',
                      labelText: 'Region',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Timing',
                      labelText: 'Timing',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                  Text("Severity", textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),),
                  DropdownButton<String>(
                    value: dropdownValue,
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>[
                      'One',
                      'Two',
                      'Three',
                      'Four',
                      'Five',
                      'Six',
                      'Seven',
                      'Eight',
                      'Nine',
                      'Ten'
                    ]
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )

                ],
              )
          ),
          //Motor
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                children: <Widget>[
                  Expanded(
                    child: Btn(
                      text: "Motor",
                      onPressed: () {
                        setState(() {
                          mtr = !mtr;
                          nm = false;
                          anm = false;
                          r1 = false;
                          l1 = false;
                        });
                      },


                    ),
                  ),
                ]
            ),
          ),
          Visibility(
            visible: mtr,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Btn(
                    text: "Normal",
                    onPressed: () {
                      setState(() {
                        nm = true;
                        anm = false;
                        r1 = false;
                        l1 = false;
                      });
                    },


                  ),
                ),
                Expanded(
                  child: Btn(
                    text: "Abnormal",
                    onPressed: () {
                      setState(() {
                        nm = false;
                        anm = true;
                        r1 = false;
                        l1 = false;
                      });
                    },


                  ),
                )
              ],
            ),

          ),
          Visibility(
            visible: anm,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Btn(
                    text: "right",
                    onPressed: () {
                      setState(() {
                        r1 = true;
                        l1 = false;
                      });
                    },


                  ),
                ),
                Expanded(
                  child: Btn(
                    text: "Left",
                    onPressed: () {
                      setState(() {
                        l1 = true;
                        r1 = false;
                      });
                    },


                  ),
                )
              ],
            ),

          ),
          Visibility(
            visible: nm,
            child: Text("nothing"),
          ),

          Visibility(
            visible: r1,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Upper limb",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[6][0],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[6][0] = val;
                            });
                          }),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Lower limb",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[6][1],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[6][1] = val;
                            });
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
          Visibility(
            visible: l1,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Upper limb",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[7][0],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[7][0] = val;
                            });
                          }),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Lower limb",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: xxx[7][1],
                          onChanged: (bool val) {
                            setState(() {
                              xxx[7][1] = val;
                            });
                          }),
                    ],
                  ),
                )
              ],
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
  }}