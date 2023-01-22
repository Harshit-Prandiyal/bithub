import 'package:bithub/Attendence.dart';
import 'package:bithub/MessMenu.dart';
import 'package:bithub/ThirdPage.dart';
import 'package:bithub/TimeTable.dart';
import 'package:bithub/topbg.dart';
import 'package:flutter/material.dart';
import './SecondPage.dart';
import './Test.dart';
import './Profile.dart';
import './main.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import './Attendence.dart';

class FirstPage extends StatelessWidget {
  List<Profile> info;
  FirstPage({required this.info});

  final Uri _url = Uri.parse('https://erp.bitmesra.ac.in/');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;
    info.sort((a, b) {
      return b.total_ques.compareTo(a.total_ques);
      //softing on alphabetical order (Ascending order by Name String)
    });

    return Material(
        child: SingleChildScrollView(
      child: Container(
        color: Colors.black,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            topbg(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.all(6),
                  width: 150,
                  height: 170,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.leftToRight,
                            child: ThirdPage(
                              info: info,
                            ),
                            ctx: context),
                      );
                    },
                    child: Card(
                        color: Colors.grey[800],
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.fromLTRB(10, 1.5, 10, 1.5),
                                width: double.infinity,
                                height: 140,
                                //color: Colors.black,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/coding.png'),
                                    //fit: BoxFit.cover,
                                  ),
                                )),
                            Text('Comding',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6),
                  width: 150,
                  height: 170,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: SecondPage(
                              info: info,
                            ),
                            ctx: context),
                      );
                    },
                    child: Card(
                        color: Colors.blue[50],
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.fromLTRB(10, 1.5, 10, 1.5),
                                width: double.infinity,
                                height: 140,
                                //color: Colors.black,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/graduate.jpg'),
                                    //fit: BoxFit.cover,
                                  ),
                                )),
                            Text('Academics',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.all(6),
                  width: 150,
                  height: 170,
                  child: GestureDetector(
                    onTap: () {
                      _launchUrl();
                    },
                    child: Card(
                        color: Colors.blue[50],
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.fromLTRB(10, 1.5, 10, 1.5),
                                width: double.infinity,
                                height: 140,
                                //color: Colors.black,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/erp.png'),
                                    //fit: BoxFit.cover,
                                  ),
                                )),
                            Text('ERP',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6),
                  width: 150,
                  height: 170,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: TimeTable(),
                            ctx: context),
                      );
                    },
                    child: Card(
                        color: Colors.blue[50],
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.fromLTRB(10, 1.5, 10, 1.5),
                                width: double.infinity,
                                height: 140,
                                //color: Colors.black,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/schedule.png'),
                                    //fit: BoxFit.cover,
                                  ),
                                )),
                            Text('Time Table',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.all(6),
                  width: 150,
                  height: 170,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.leftToRight,
                            child: MessMenu(),
                            ctx: context),
                      );
                    },
                    child: Card(
                        color: Colors.blue[50],
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.fromLTRB(10, 1.5, 10, 1.5),
                                width: double.infinity,
                                height: 140,
                                //color: Colors.black,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/mess_menu.png'),
                                    //fit: BoxFit.cover,
                                  ),
                                )),
                            Text('Mess Menu',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6),
                  width: 150,
                  height: 170,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: Attendence(),
                            ctx: context),
                      );
                    },
                    child: Card(
                        color: Colors.blue[50],
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.fromLTRB(10, 1.5, 10, 1.5),
                                width: double.infinity,
                                height: 140,
                                //color: Colors.black,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/attendence.png'),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            Text('Attendence',
                                style: TextStyle(color: Colors.black)),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
