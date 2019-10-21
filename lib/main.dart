import 'package:flutter/material.dart';
import 'home_page.dart';
//import 'hp.dart';
void main() => runApp(Luassegiempat());

class Luassegiempat extends StatefulWidget {

  
  @override
  _LuassegiempatState createState() => _LuassegiempatState();
}

class _LuassegiempatState extends State<Luassegiempat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Luas Segi Empat",
      theme: new ThemeData(primarySwatch: Colors.red),
      home:  new Homepage(),
      
    );
  }
}

