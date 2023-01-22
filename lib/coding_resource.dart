import 'package:bithub/topbg.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class coding_resource extends StatelessWidget {
  coding_resource({super.key});
  List<String> subjects = [];

  Future<void> _launchUrl(_url) async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
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
            SizedBox(
              height: ht * 0.07,
            ),
            GestureDetector(
              onTap: () {
                final Uri _url = Uri.parse(
                    'https://takeuforward.org/interviews/strivers-sde-sheet-top-coding-interview-problems/');
                _launchUrl(_url);
              },
              child: Card(
                color: Colors.blue[100],
                margin: EdgeInsets.symmetric(
                    vertical: ht * 0.015, horizontal: wt * 0.05),
                child: ListTile(
                  leading: Image.asset('assets/images/striver.jpg'),
                  title: Text('Striver SDE Sheet'),
                  subtitle: Text('chup chap click kr le laude'),
                  //trailing: ImageIcon(AssetImage('striver.jpg')),
                  isThreeLine: true,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                final _url = Uri.parse('https://leetcode.com/problemset/all/');
                _launchUrl(_url);
              },
              child: Card(
                color: Colors.blue[100],
                margin: EdgeInsets.symmetric(
                    vertical: ht * 0.015, horizontal: wt * 0.05),
                child: ListTile(
                  leading: Image.asset('assets/images/leetcode.png'),
                  title: Text('Leetcode'),
                  subtitle: Text('LeetCode problemset search'),
                  //trailing: ImageIcon(AssetImage('leetcode.png')),
                  isThreeLine: true,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                final _url = Uri.parse('https://codeforces.com/problemset');
                _launchUrl(_url);
              },
              child: Card(
                color: Colors.blue[100],
                margin: EdgeInsets.symmetric(
                    vertical: ht * 0.015, horizontal: wt * 0.05),
                child: ListTile(
                  leading: Image.asset('assets/images/code-forces.png'),
                  title: Text('Codeforces'),
                  subtitle: Text('For ACM Tompers [Aji van]'),
                  // trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
