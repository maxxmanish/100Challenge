import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.purple[200],
          appBar: AppBar(
              backgroundColor: Colors.deepPurple,
              elevation: 0,
              // leading: Icon(Icons.menu, color: Colors.white),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.logout, color: Colors.white))
              ],
              title: Text(
                "  My App Bar",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
          body: Center(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple,
                  ),
                  height: 300,
                  width: 300,
                  child: Center(
                      child: Icon(Icons.favorite,
                          color: Colors.white, size: 50)))),
          drawer: Drawer(),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: 0,
              fixedColor: Colors.green,
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
                  icon: Icon(Icons.account_circle),
                ),
              ],
              onTap: (int indexOfItem) {}),
        ));
  }
}
