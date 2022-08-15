import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({Key? key}) : super(key: key);

  int i, j, total ;
  Function rRepeat;

  Result(this.i, this.j, this.rRepeat,this.total);

  Widget get endStatement{
    if(total < 4) return Text("sad") ;
    else if(total < 7) return Text("meh") ;
    else return Text("O_O") ;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          endStatement,
          Text("$total"),
          ElevatedButton(
            onPressed: () {
              rRepeat() ;
            },
            child: Text("Restart?"),
          ),
        ],
      ),
    );
  }
}
