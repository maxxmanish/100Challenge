import 'package:flutter/material.dart';
import 'package:flutter_app/pages/1stPage.dart';
void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
      home: firstPage(),
      routes: {

      }
    );
  }
}