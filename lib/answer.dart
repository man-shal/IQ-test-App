import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const Answer({Key? key}) : super(key: key);
  final Function but, addTotal;
  int id, qa ;
  final List<List<Map<String,int>>> statement = [[{"cknaoanfoe1":1}, {"uacieanca1":2}, {"oapcnacd1":3}],
    [{"cknaoanfoe2":1}, {"uacieanca2":2}, {"oapcnacd2":3}],
    [{"cknaoanfoe3":1}, {"uacieanca3":2}, {"oapcnacd3":3}]];

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
