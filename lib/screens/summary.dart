import 'dart:io';
import 'package:flutter/cupertino.dart' as prefix0;

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
            if (fb == true)
              Column(children: [
                Row(children: [
                  get(18, "Foriegn Bodies", FontWeight.bold),
                ]),
                SizedBox(height: 5),

                  Column(children: [
                    Row(children: [
                      Expanded(
                        child: get(15, "Symptoms", FontWeight.bold),
                      ),
                      Expanded(
                        child: get(15, "Interventions", FontWeight.bold),
                      ),
                    ]),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                              SizedBox(height: 4),
                              if (secretions == true)
                                get(12, "Secretions", FontWeight.normal),
                              if (vomiting == true)
                                get(12, "Vomiting", FontWeight.normal),
                              if (blood == true)
                                get(12, "Blood", FontWeight.normal),
                              if (tooth == true)
                                get(12, "Tooth", FontWeight.normal),
                            ])),
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                              SizedBox(height: 4),
                              if (suction == true)
                                get(12, "Suction", FontWeight.normal),
                              if (fbo != "")
                                get(12, "Further Interventions :" + fbo,
                                    FontWeight.normal)
                            ])),
                      ],
                    )
                  ]),
                SizedBox(height: 15),
                Row(children: [
                  if (st == true) get(18, "Soft Tissues", FontWeight.bold),
                ]),
                SizedBox(height: 5),
                if (st == true)
                  Row(children: [
                    Expanded(
                      child: get(15, "Symptoms", FontWeight.bold),
                    ),
                    Expanded(
                      child: get(15, "Interventions", FontWeight.bold),
                    ),
                  ]),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                          SizedBox(height: 4),
                          if (swelling == true)
                            get(12, "Swelling", FontWeight.normal),
                          if (deformity == true)
                            get(12, "Deformity", FontWeight.normal),
                          if (injuries == true)
                            get(12, "Injuries", FontWeight.normal),
                        ])),
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                          SizedBox(height: 4),
                          if (headtilt == true)
                            get(12, "Head Tilt", FontWeight.normal),
                          if (chinlift)
                            get(12, "Chin Lift ", FontWeight.normal),
                          if (jawthrust == true)
                            get(12, "Jaw Thrust", FontWeight.normal),
                          if (sto != "")
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
