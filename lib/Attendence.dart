import 'package:bithub/atten.dart';
import 'package:bithub/topbg.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'AttendenceEntrySheet.dart';

class _PieData {
  _PieData(this.xData, this.yData, this.colour);
  final String xData;
  final num yData;
  Color colour;
}

var attendence = [
  atten(name: 'Understanding Harmony', present: 10, total: 15),
  atten(name: 'DAA', present: 10, total: 10),
  atten(name: 'DBMS', present: 10, total: 20),
  atten(name: 'OE', present: 10, total: 20),
  atten(name: 'OS', present: 10, total: 20),
  atten(name: 'Numerical Methods', present: 10, total: 20),
  atten(name: 'Pt and Games', present: 10, total: 20),
  atten(name: 'NM Lab', present: 10, total: 20),
  atten(name: 'DAA Lab', present: 10, total: 20),
  atten(name: 'DBMS Lab', present: 10, total: 20),
  atten(name: 'Linux Lab', present: 10, total: 20),
];
var getattendence = {
  'Understanding Harmony': attendence[0],
  'DAA': attendence[1],
  'DBMS': attendence[2],
  'OE': attendence[3],
  'OS': attendence[4],
  'Numerical Methods': attendence[5],
  'Pt and Games': attendence[6],
  'NM Lab': attendence[7],
  'DAA Lab': attendence[8],
  'DBMS Lab': attendence[9],
  'Linux Lab': attendence[10],
};

class Attendence extends StatefulWidget {
  @override
  State<Attendence> createState() => _AttendenceState();
}

class _AttendenceState extends State<Attendence> {
  getPresentvalue(String name) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    int? pre = pref.getInt(name + 'present');
    int? tot = pref.getInt(name + 'total');
    return [pre, tot];
  }

  setPresentvalues(String name, int present, int total) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt(name + 'present', present);
    pref.setInt(name + 'total', total);
  }

  void initState() {
    checkforattendence();
  }

  void checkforattendence() async {
    for (var i in attendence) {
      List<int?> temp = await getPresentvalue(i.name);
      setState(() {
        i.present = temp[0] ?? getattendence[i.name]!.present;
        i.total = temp[1] ?? getattendence[i.name]!.total;
      });
    }
  }

  void presentToday(String name) {
    for (var i in attendence) {
      if (i.name == name) {
        setState(() {
          setPresentvalues(name, i.present + 1, i.total + 1);
          i.present++;
          i.total++;
        });
      }
    }
  }

  void absentToday(String name) {
    for (var i in attendence) {
      if (i.name == name) {
        setState(() {
          setPresentvalues(name, i.present, i.total + 1);
          i.total++;
        });
      }
    }
  }

  void AttendenceEntry(String name, int pr, int tot) {
    for (var i in attendence) {
      if (i.name == name) {
        setState(() {
          setPresentvalues(name, pr, tot);
          i.total = tot;
          i.present = pr;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;

    return Material(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          width: wt,
          child: Column(
            children: [
              topbg(),
              SizedBox(
                width: wt * 0.03,
              ),
              for (atten i in attendence)
                Card(
                  margin: EdgeInsets.all(8),
                  color: Colors.blue[100],
                  child: Container(
                      //color: Colors.blue[100],
                      height: ht * 0.2,
                      width: double.infinity,
                      padding: EdgeInsets.all(6),
                      child: Row(
                        children: [
                          Container(
                            width: wt * 0.4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      iconSize: 25,
                                      icon: const Icon(Icons.menu),
                                      onPressed: () {
                                        showModalBottomSheet(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            25.0))),
                                            isScrollControlled: true,
                                            context: context,
                                            builder: (_) {
                                              return AttendenceEntrySheet(
                                                name: i.name,
                                                dummyname: i.name,
                                                pr: i.present,
                                                tot: i.total,
                                                AttendenceEntry:
                                                    AttendenceEntry,
                                              );
                                            });
                                      },
                                    ),
                                    Expanded(
                                      child: Text(i.name,
                                          maxLines: 1,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          )),
                                    ),
                                  ],
                                ),
                                Text('Attendence : ${i.present}/${i.total}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14)),
                                Text(
                                  'Status : ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                Text('${i.status()} Present required',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14)),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                width: wt * 0.5,
                                height: ht * 0.14,
                                child: SfCircularChart(
                                    margin: EdgeInsets.all(0),
                                    //legend: Legend(isVisible: true),
                                    annotations: <CircularChartAnnotation>[
                                      CircularChartAnnotation(
                                          widget: Container(
                                              child: Text(
                                                  '${i.percent().toStringAsFixed(2)}',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.5),
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold))))
                                    ],
                                    series: <CircularSeries<_PieData, String>>[
                                      DoughnutSeries<_PieData, String>(
                                        dataSource: [
                                          _PieData(
                                              i.name,
                                              i.present,
                                              i.percent() < 75
                                                  ? Colors.red
                                                  : Colors.green),
                                          _PieData(i.name, i.total - i.present,
                                              Colors.grey)
                                        ],
                                        xValueMapper: (_PieData data, _) =>
                                            data.xData,
                                        yValueMapper: (_PieData data, _) =>
                                            data.yData,
                                        pointColorMapper: (_PieData data, _) =>
                                            data.colour,
                                      ),
                                    ]),
                              ),
                              Container(
                                width: wt * 0.5,
                                height: ht * 0.04,
                                //color: Colors.amber,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FloatingActionButton(
                                      heroTag: null,
                                      child: Icon(Icons.add),
                                      backgroundColor: Colors.green,
                                      foregroundColor: Colors.white,
                                      onPressed: () {
                                        presentToday(i.name);
                                      },
                                    ),
                                    FloatingActionButton(
                                      heroTag: null,
                                      child: Icon(Icons.remove),
                                      backgroundColor: Colors.red,
                                      foregroundColor: Colors.white,
                                      onPressed: () {
                                        absentToday(i.name);
                                      },
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      )),
                )
            ],
          ),
        ),
      ),
    );
  }
}
