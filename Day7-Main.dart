import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            backgroundColor: Colors.purple[200],
            elevation: 0,
            // leading: Icon(Icons.menu, color: Colors.white),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.logout, color: Colors.black))
            ],
            title: Text(
              "  My App Bar",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          body: Center(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade500,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0)
                      ]),
                  height: 200,
                  width: 200,
                  child: Center(
                      child: ElevatedButton(
                    onPressed: () {
                      print("flutter_test");
                    },
                    child: Text("Press",
                    style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,
                    color: Colors.red[200]),
                    
                    ),
                  )))),
          drawer: Drawer(),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: 0,
              fixedColor: Colors.blue,
              items: const [
                BottomNavigationBarItem(
                  label: "Home",
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: "Search",
                  icon: Icon(Icons.search),
                ),
                BottomNavigationBarItem(
                  label: "Profile",
                  icon: Icon(Icons.camera),
                ),
              ],
              onTap: (int indexOfItem) {}),
        ));
  }
}
