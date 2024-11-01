import 'package:appdemo/pages/settings.dart';
import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.deepPurple[200],
              title: Text("   Home Page  ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
          drawer: Drawer(
              child: ListView(children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink[100],
              ),
              child: Text("m a n i s h"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("s e t t i n g s"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => setting()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("h o m e "),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => home_page()));
              },
            )
          ])),
        ));
  }
}
