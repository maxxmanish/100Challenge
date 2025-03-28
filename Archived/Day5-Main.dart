import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.blue[200],
                leading: Icon(Icons.menu),
                title: Text(" The App Bar")),
            body: GridView.builder(
              itemCount: 64,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (Context, Index) => Container(
                color: Colors.deepPurple,
                margin: EdgeInsets.all(2),
              ),
            )));
  }
}
