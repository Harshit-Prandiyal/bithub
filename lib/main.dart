import 'package:bithub/Profile.dart';
import 'package:flutter/material.dart';
import './FirstPage.dart';
// C:\Users\Lenovo\development\projects\bithub\bithub\android\app\build.gradle idhar jake android {compile sdk version change kiya tha yes}

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var Profiles = [
    Profile(
        cgpa_sem: 9.01,
        name: "Gen Sec Manan",
        email: "bjhbhjhjb",
        total_ques: 39,
        LeetCodeUrl: 'https://leetcode.com/Harshit_Prandiyal/'),
    Profile(
        cgpa_sem: 8.91,
        name: "Mtech Avi",
        email: "bjhbhjhjb",
        total_ques: 163,
        LeetCodeUrl: 'https://leetcode.com/Harshit_Prandiyal/'),
    Profile(
        cgpa_sem: 8.56,
        name: "PG Swarn",
        email: "bjhbhjhjb",
        total_ques: 100,
        LeetCodeUrl: 'https://leetcode.com/Harshit_Prandiyal/'),
    Profile(
        cgpa_sem: 8.51,
        name: "Matrix Narayan",
        email: "bjhbhjhjb",
        total_ques: 98,
        LeetCodeUrl: 'https://leetcode.com/Harshit_Prandiyal/'),
    Profile(
        cgpa_sem: 8.49,
        name: "PHD Harshit",
        email: "bjhbhjhjb",
        total_ques: 80,
        LeetCodeUrl: 'https://leetcode.com/Harshit_Prandiyal/'),
    Profile(
        cgpa_sem: 8.45,
        name: "Piro Comder",
        email: "bjhbhjhjb",
        total_ques: 84,
        LeetCodeUrl: 'https://leetcode.com/Harshit_Prandiyal/'),
    Profile(
        cgpa_sem: 8.2,
        name: "Godfather Dubey",
        email: "bjhbhjhjb",
        total_ques: 9,
        LeetCodeUrl: 'https://leetcode.com/Harshit_Prandiyal/'),
    Profile(
        cgpa_sem: 8.39,
        name: "MBA Ajaad",
        email: "bjhbhjhjb",
        total_ques: 76,
        LeetCodeUrl: 'https://leetcode.com/Harshit_Prandiyal/'),
    Profile(
        cgpa_sem: 8.0,
        name: "Mutthh Abhay",
        email: "bjhbhjhjb",
        total_ques: 57,
        LeetCodeUrl: 'https://leetcode.com/Harshit_Prandiyal/'),
  ];
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bithub 🍀',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(
        info: Profiles,
      ),
    );
  }
}
