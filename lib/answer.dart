import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const Answer({Key? key}) : super(key: key);
  final Function but, addTotal;
  int id, qa ;
  final List<List<Map<String,int>>> statement = [[{"6\'":0}, {"12\'":0}, {"NO DICK FOUND":3}],
    [{"A CUP":0}, {"B CUP":0}, {"VERY VERY BIG AND SAGGY PAIR OF HONKERS":3}],
    [{"0":0}, {"-1":2}, {"-INFINITY":1000}]];

  Answer(this.but,this.qa,this.id,this.addTotal);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          but();
          addTotal(statement[qa][id][statement[qa][id].keys.toList()[0]]) ;
        },
        child: Text(
          statement[qa][id].keys.toList()[0],
        ),
      ),
    );
  }
}
