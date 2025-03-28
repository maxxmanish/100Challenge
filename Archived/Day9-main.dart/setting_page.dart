import 'package:flutter/material.dart';
class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[200],
        // appBar:AppBar(title: Text("seetings_page")),
           body: Center(
        child: Text("Settings  page", style: TextStyle(fontSize:30,fontWeight:FontWeight.bold))
      ),
      )
    );
  }
}
