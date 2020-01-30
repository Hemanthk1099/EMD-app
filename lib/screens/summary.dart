import 'dart:io';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:test3/screens/home.dart';

import 'look.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';
import 'dart:ui';
import 'package:printing/printing.dart';
//commit
Directory baseDir;
String pathToPdf = "";
void createDir() async {
  print("creating directory ...");
  baseDir = await getExternalStorageDirectory();
  pathToPdf = baseDir.path;
  print(baseDir.path);
  var dir = Directory(baseDir.path);
  bool dirExists = await dir.exists();
  if (!dirExists) {
    dir.create(recursive: true);
  }
  print(baseDir.path);
}

void generateSummary() async {
  createDir();
  final Document pdf = Document();
  pdf.addPage(MultiPage(
      pageFormat:
          PdfPageFormat.letter.copyWith(marginBottom: 1.5 * PdfPageFormat.cm),
      crossAxisAlignment: CrossAxisAlignment.start,
      header: (Context context) {
        return Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(bottom: 3.0 * PdfPageFormat.mm),
            padding: const EdgeInsets.only(bottom: 3.0 * PdfPageFormat.mm),
            decoration: const BoxDecoration(
                border:
                    BoxBorder(bottom: true, width: 0.5, color: PdfColors.grey)),
            child: Text('Patient Summary',
                style: Theme.of(context)
                    .defaultTextStyle
                    .copyWith(color: PdfColors.grey)));
      },
      build: (Context context) => [
        get(12,"Name : "+PatientName,FontWeight.normal),
        get(12,"Symptoms : "+symptoms,FontWeight.normal),
        SizedBox(height: 5),
        get(15, "AIRWAY", FontWeight.bold),
              Column(children: [
                SizedBox(height: 5),
                  Column(children: [
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                              SizedBox(height: 4),
                             getLabel( "Secretions", secretions),
                                  getLabel( "Vomiting", vomiting),
                                  getLabel( "Blood", blood),
                                  getLabel( "Tooth", tooth),
                            ])),
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                              SizedBox(height: 4),
                                  getLabel( "Suction", suction),
                                get(12, "Further Interventions :" + fbo,
                                    FontWeight.normal)
                            ])),
                      ],
                    )
                  ]),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                          SizedBox(height: 4),

                            getLabel( "Swelling",swelling),
                            getLabel("Deformity", deformity),
                            getLabel( "Injuries", injuries),
                        ])),
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                          SizedBox(height: 4),
                            getLabel("Head Tilt", headtilt),
                            getLabel( "Chin Lift ", chinlift),
                            getLabel("Jaw Thrust", jawthrust),
                            get(12, "Further Interventions :" + sto,
                                FontWeight.normal)
                        ])),
                  ],
                )
              ]),
          ]));
  pathToPdf = '${baseDir.path}/report.pdf';
  final File file = File(pathToPdf);
  await file.writeAsBytes(pdf.save());
}

Widget get(double size, String text, FontWeight type) {
  return (Text(text,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: size,
        fontWeight: type,
      )));
}
Widget getLabel(String text,bool yesNo)
{
  if(yesNo)
    text +=" : yes";
  else
    text += " : no";
  return get(12,text,FontWeight.normal);
}
