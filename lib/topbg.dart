import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class topbg extends StatelessWidget {
  const topbg({super.key});

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;

    return Container(
      child: Stack(
        children: [
          Container(
            height: ht * 0.35,
            width: double.infinity,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.asset('assets/images/background.png'),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: ht * 0.04,
              ),
              Container(
                  height: ht * 0.20,
                  width: wt * 0.17,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset('assets/images/light1.png'),
                  )),
              SizedBox(
                width: ht * 0.07,
              ),
              Container(
                  height: ht * 0.12,
                  width: wt * 0.14,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset('assets/images/light2.png'),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
