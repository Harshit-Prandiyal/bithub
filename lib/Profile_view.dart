import 'package:bithub/Profile.dart';
import 'package:bithub/topbg.dart';
import 'package:flutter/material.dart';

class Profile_view extends StatelessWidget {
  List<Profile> info;
  String name;
  Profile_view({
    required this.info,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    Profile person;
    for (var i in info) {
      if (i.name == name) {
        person = i;
      }
    }

    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;

    return Material(
      child: Container(
        height: ht,
        width: wt,
        color: Colors.black,
        child: Column(
          children: [
            topbg(),
          ],
        ),
      ),
    );
  }
}
