import 'package:bithub/Profile.dart';
import 'package:bithub/acad_card.dart';
import 'package:bithub/acad_resource.dart';
import 'package:bithub/topbg.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

class SecondPage extends StatelessWidget {
  List<Profile> info;
  SecondPage({required this.info});

  @override
  Widget build(BuildContext context) {
    info.sort((a, b) {
      return b.cgpa_sem.compareTo(a.cgpa_sem);
      //softing on alphabetical order (Ascending order by Name String)
    });
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;

    return Material(
        // appBar: AppBar(
        //   title: Text('Academics'),
        // ),
        // backgroundColor: Colors.blue[900],
        child: SingleChildScrollView(
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            topbg(),
            SizedBox(
              height: ht * 0.06,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      child: acad_resource(),
                      ctx: context),
                );
              },
              child: Card(
                margin:
                    EdgeInsets.only(left: 11, right: 11, bottom: 18, top: 11),
                elevation: 10,
                color: Colors.blue[50],
                child: Container(
                  height: ht * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text('Study Aid',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0))),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: ht * 0.04,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Top Scorers',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 8,
              ),
              width: double.infinity,
              child: Column(children: [
                for (var person in info)
                  acad_card(
                    name: person.name,
                    marks: person.cgpa_sem,
                    info: info,
                  )
              ]),
            )
          ],
        ),
      ),
    ));
  }
}
