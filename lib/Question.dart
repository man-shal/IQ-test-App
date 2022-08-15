import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //const ({Key? key}) : super(key: key);
  final List<String> queList = ["Q1: akaamdam", "Q2: acbicien", "Q3: mcoanffg"];
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
