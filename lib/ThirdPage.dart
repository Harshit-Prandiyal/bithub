import 'package:bithub/coding_resource.dart';
import 'package:bithub/topbg.dart';
import 'package:flutter/material.dart';
import './Profile.dart';
import './acad_card.dart';
import 'package:page_transition/page_transition.dart';

class ThirdPage extends StatelessWidget {
  List<Profile> info;
  ThirdPage({required this.info});

  @override
  Widget build(BuildContext context) {
    info.sort((a, b) {
      return b.total_ques.compareTo(a.total_ques);
      //softing on alphabetical order (Ascending order by Name String)
    });
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;
    return Material(
        // appBar: AppBar(
        //   title: Text('Comding'),
        // ),
        //backgroundColor: Colors.blue[900],
        child: SingleChildScrollView(
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            topbg(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      child: coding_resource(),
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
                  child: Center(
                    child: Text('Resources',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0))),
                  ),
                ),
              ),
            ),
            Container(
              height: ht * 0.04,
              child: Text(
                'Top Comders',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(children: [
                for (var person in info)
                  acad_card(
                      name: person.name, marks: person.total_ques, info: info)
              ]),
            )
          ],
        ),
      ),
    ));
  }
}
