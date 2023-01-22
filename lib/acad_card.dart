import 'package:bithub/Profile.dart';
import 'package:bithub/SecondPage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'MessMenu.dart';
import 'Profile_view.dart';

class acad_card extends StatelessWidget {
  String name;
  var marks;
  List<Profile> info;
  acad_card({required this.name, required this.marks, required this.info});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.fade,
              child: Profile_view(info: info, name: name),
              ctx: context),
        );
      },
      child: Card(
        color: Colors.blue[50],
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 6, right: 6, bottom: 13, top: 6),
              padding: EdgeInsets.all(5),
              child: Text(
                '${name} : ${marks.toString()}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
