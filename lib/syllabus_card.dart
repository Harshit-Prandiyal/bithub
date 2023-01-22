import 'package:bithub/topbg.dart';
import 'package:flutter/material.dart';

class syllabus_card extends StatelessWidget {
  List<List<String>> syllabus;

  syllabus_card({required this.syllabus});

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: ht),
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              topbg(),
              SizedBox(
                height: ht * 0.03,
              ),
              for (var i in syllabus)
                Card(
                  color: Colors.blue[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        child: Text(
                          i[0],
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            i[1],
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
