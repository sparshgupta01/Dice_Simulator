import 'package:flutter/material.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int a=1;
  int b=1;
  void changeno(){setState(() {
    a=Random().nextInt(6)+1;
    b=Random().nextInt(6)+1;
  }); }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Dice App ',style:GoogleFonts.saira(color: Colors.white,fontWeight: FontWeight.bold) ),),
          backgroundColor: Colors.red[900],
        ),
        backgroundColor: Colors.red,
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      changeno();
                    },
                    child: Image(
                      image: AssetImage('photos/dice$b.png'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      changeno();
                    },
                    child: Image(
                      image: AssetImage('photos/dice$a.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),);
  }
}
