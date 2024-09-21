import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              title: Text(" Using  appBar"), backgroundColor: Colors.blue),
          drawer: Drawer(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 2,
            fixedColor: Color(0xff40ffa6),
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Call",
                icon: Icon(Icons.call),
              ),
              BottomNavigationBarItem(
                label: "Camera",
                icon: Icon(Icons.camera),
              ),
            ],
            onTap: (int indexOfItem) {},
          ),
        ));
  }
}
