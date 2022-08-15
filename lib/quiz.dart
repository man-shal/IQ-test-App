import 'package:flutter/material.dart';
import './Question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  //const Quiz({Key? key}) : super(key: key);
  int i, j ;
  Function qFun, addTotal ;

  Quiz(this.i,this.j,this.qFun,this.addTotal) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Question(i),
        for (int k = 0; k < 3; ++k) Answer(qFun, j, k,addTotal),
      ],
    );
  }
}
