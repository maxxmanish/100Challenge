import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber[200],
        appBar: AppBar(
          title: const Text("App_Bar"),
          backgroundColor: Colors.blue[300],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text(
              "Click Here",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              elevation: 0,
            ),
            onPressed: () {},
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white24, // Set background color here
          items: const [
            BottomNavigationBarItem(
              label: 'menu',
              icon: Icon(Icons.message, color: Colors.black),
            ),
            BottomNavigationBarItem(
              label: 'call',
              icon: Icon(Icons.call, color: Colors.pink),
            ),
            BottomNavigationBarItem(
              label: 'home',
              icon: Icon(Icons.home, color: Colors.purple),
            ),
          ],
        ),
      ),
    );
  }
}
