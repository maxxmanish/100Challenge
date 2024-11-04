import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int Count = 0;

  void CountNumber() {
    setState(() {
      Count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.deepPurple[200],
                title: Text(
                  "Counter _App_Demo",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You have pushed the button this many times:",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    Count.toString(),
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                  ),
                  ElevatedButton(
                      onPressed: CountNumber, child: Icon(Icons.plus_one_sharp))
                ],
              ),
            )));
  }
}
