import 'dart:ffi';

import 'package:flutter/material.dart';
import './atten.dart';

class AttendenceEntrySheet extends StatefulWidget {
  @required
  int pr, tot;
  String name;
  String dummyname;
  Function AttendenceEntry;

  AttendenceEntrySheet({
    required this.name,
    required this.dummyname,
    required this.pr,
    required this.tot,
    required this.AttendenceEntry,
  });

  @override
  State<AttendenceEntrySheet> createState() => _AttendenceEntrySheetState();
}

class _AttendenceEntrySheetState extends State<AttendenceEntrySheet> {
  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;

    final prcontroller = TextEditingController(text: widget.pr.toString());
    final totalcontroller = TextEditingController(text: widget.tot.toString());

    return Container(
        height: ht * 0.53,
        //width: double.infinity,
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom, top: ht * 0.02),
        //color: Colors.blue[500],
        child: SingleChildScrollView(
          child: Column(
            children: [
              // TextFormField(
              //   //initialValue: name,
              //   decoration: InputDecoration(labelText: 'Subject Name'),
              //   controller: titlecontroller,
              // ),
              Text(
                widget.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                //initialValue: pr.toString(),
                decoration: InputDecoration(labelText: 'Present'),
                keyboardType: TextInputType.number,
                controller: prcontroller,
              ),
              TextFormField(
                //initialValue: total.toString(),
                decoration: InputDecoration(labelText: 'Total Classes'),
                keyboardType: TextInputType.number,
                controller: totalcontroller,
              ),

              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  child: Text('Save Changes'),
                  style: ElevatedButton.styleFrom(
                    primary:
                        Color.fromARGB(255, 121, 126, 234), // Background color
                  ),
                  onPressed: () {
                    if (prcontroller.text != "" && totalcontroller.text != "") {
                      widget.AttendenceEntry(
                          widget.name,
                          int.parse(prcontroller.text),
                          int.parse(totalcontroller.text));
                    }
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).viewInsets.bottom + ht * 0.1,
              )
            ],
          ),
        ));
  }
}
