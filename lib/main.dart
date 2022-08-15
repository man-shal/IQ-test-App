import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

List<String> queList = ["Q1: akaamdam", "Q2: acbicien", "Q3: mcoanffg"];

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //const MyApp({Key? key}) : super(key: key);
  int i = 0, j = 0;
  int total = 0 ;

  void fun() {
    setState(() {
      i++;
      j++;
    });
    print(i);
  }

  void repeat(){
    setState(() {
      i = 0 ;
      j = 0 ;
      total = 0 ;
    });
  }

  void addTotal(int pass){
    total += pass ;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("This App!!")),
        body: Container(
          height: 1000,
          child: i < 3
              ? Quiz(i,j,fun,addTotal)
              : Result(i,j,repeat,total),
        ),
      ),
    );
  }
}

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    int cnt = 0;
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("this app"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              const Text(
                "Solve these..",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Option("first", "a"),
              Option("second", "b"),
              Option("third", "c"),
              Option("fourth", "d"),
              Option("fifth", "e"),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}

class Option extends StatefulWidget {
  String ques;
  String click;

  Option(this.ques, this.click);

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
  int x = 0;

  void fun() {
    x++;
    print(x);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            widget.ques,
            style: Theme.of(context).textTheme.headline4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  child: Text(
                    widget.click,
                  ),
                  onPressed: () {
                    fun();
                  }),
              ElevatedButton(
                  child: Text(
                    widget.click,
                  ),
                  onPressed: () {
                    fun();
                  }),
              ElevatedButton(
                  child: Text(
                    widget.click,
                  ),
                  onPressed: () {
                    fun();
                  }),
            ],
          ),
        ],
      ),
    );
  }
}*/

/*class Option extends MyApp {
  String ques;

  String click;

  Option(this.ques, this.click,);

  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(ques,style: Theme.of(context).textTheme.headline4,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  child: Text(click),
                  onPressed: () {
                    fun();
                  }),
              ElevatedButton(
                  child: Text(click),
                  onPressed: () {
                    fun();
                  }),
              ElevatedButton(
                  child: Text(click),
                  onPressed: () {
                    fun();
                  }),
            ],
          ),
        ],
      ),
    );
  }
}*/
