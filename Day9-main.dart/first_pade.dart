import 'package:flutter/material.dart';
import 'package:flutter_app/Settings.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/profile.dart';
class    firstPage  extends StatefulWidget {
      firstPage ({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
   int selectedIndex = 0; 
   void _NavigationBottumBar(int index){
    setState(() {
       selectedIndex = index;
    });
   }  

final List _pages = [
    Home_page(),
    Profile_page(),
    Settings(),
  

 ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("1stPage"),backgroundColor: Colors.deepPurple[200]),
        body: _pages[selectedIndex],
        drawer: Drawer(
          backgroundColor: Colors.pink[100],
          child: Column(
            children: [
              ListTile(
                
              )
            ]
          )
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: _NavigationBottumBar,
          items: [
            // home
            BottomNavigationBarItem(icon: Icon(Icons.home),
            label: "h o m e",
            
            
            ),
              
            // profile_page
            BottomNavigationBarItem(
              icon:Icon(Icons.person,color: Colors.black26),
              label:"profile"
            ),
            // setting page
            BottomNavigationBarItem(
              icon:Icon(Icons.settings),
              label: "settings",
            )
          ]
        )
        
      )
    );
  }
}

home() {
}
