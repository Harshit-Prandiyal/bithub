import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './main.dart';

class MessMenu extends StatelessWidget {
  const MessMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mess Menu'),
        backgroundColor: Color.fromARGB(255, 121, 126, 234),
      ),
      body: Container(
        color: Colors.black,
        child: InteractiveViewer(
            boundaryMargin: const EdgeInsets.all(3.0),
            child: Center(child: Image.asset('assets/images/messmenu.jpeg'))),
      ),
    );
  }
}
