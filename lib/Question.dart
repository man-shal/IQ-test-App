import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //const ({Key? key}) : super(key: key);
  final List<String> queList = ["Q1: KAMBLES DICK LENGTH ??", "Q2: KAMBLE'S BOOB SIZE", "Q3: KAMBLE'S NUMBER OF BITCHES"];
  final int i;

  Question(this.i);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        queList[i],
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
