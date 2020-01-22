import 'package:flutter/material.dart';
import 'mews.dart';
import 'package:test3/components/button.dart';
class GetData extends StatefulWidget {
  @override
  _GetDataState createState() => _GetDataState();
}
enum Avpu { alert, verbal, pain, unresponsive ,confused}
Avpu _avpuGroup ;
class _GetDataState extends State<GetData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mews Data"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                obj.pulse = int.parse(value);
              },
              decoration: InputDecoration(
                hintText: "Pulse Rate"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                obj.rr = int.parse(value);
              },
              decoration: InputDecoration(
                hintText: "Respiratory Rate"
              ),
            ),
          ),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text("CNS",textAlign:TextAlign.left,style: TextStyle(
                fontSize: 20,
              ),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 12),
            child: Column(
              children: <Widget>[
                RadioListTile(
                      title: Text("Confused"),
                      value: Avpu.confused, groupValue: _avpuGroup, onChanged:
                      (Avpu value){
                    setState(() {
                      _avpuGroup = value;
                      obj.cns = 2;
                    });
                  }),

                 RadioListTile(
                      title: Text("Alert"),
                      value: Avpu.alert, groupValue: _avpuGroup, onChanged:
                      (Avpu value){
                    setState(() {
                      _avpuGroup = value;
                      obj.cns = 0;
                    });
                  }),

                RadioListTile(
                      title: Text("Verbal"),
                      value: Avpu.verbal, groupValue: _avpuGroup, onChanged:
                      (Avpu value){
                    setState(() {
                      _avpuGroup = value;
                      obj.cns = 1;

                    });
                  }),

                 RadioListTile(
                      title: Text("Pain"),
                      value: Avpu.pain, groupValue: _avpuGroup, onChanged:
                      (Avpu value){
                    setState(() {
                      _avpuGroup = value;
                      obj.cns = 2;
                    });
                  }),

               RadioListTile(
                      title: Text("Unresponsive"),
                      value: Avpu.unresponsive, groupValue: _avpuGroup, onChanged:
                      (Avpu value){
                    setState(() {
                      _avpuGroup = value;
                      obj.cns = 3;
                    });
                  }
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                obj.temp = double.parse(value);
              },
              decoration: InputDecoration(
                hintText: "Temperature"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                obj.sbp = int.parse(value);
              },
              decoration: InputDecoration(
                hintText: "Systo Blood Pressure"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Btn(
              text: "Calculate Mew Score",
              onPressed: () {
                setState(() {
                  obj.calMewScore();
                });
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new DisplayMews()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
