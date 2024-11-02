import 'package:flutter/material.dart';
 class Profile_page extends StatelessWidget {
  const Profile_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[200],
        // appBar:AppBar(title: Text("profile_page"))
           body: Center(
        child: Text("profile  page", style: TextStyle(fontSize:30,fontWeight:FontWeight.bold))
      ),
      )
    );
  }
}
