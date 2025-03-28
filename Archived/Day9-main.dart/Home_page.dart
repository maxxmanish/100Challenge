import 'package:flutter/material.dart';
class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber[200],
      body: Center(
        child: Text("home  page", style: TextStyle(fontSize:30,fontWeight:FontWeight.bold))
      ),

      )
    );
  }
}
