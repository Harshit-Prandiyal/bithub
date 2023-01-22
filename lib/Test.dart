import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  int index;
  String name;
  Test(this.index, this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.blue[900],
          child: Text(
            '$index',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(10, 4, 10, 3),
          color: Colors.blue[900],
          child: Container(
              height: 33,
              width: 150,
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
        ),
      ]),
    );
  }
}
