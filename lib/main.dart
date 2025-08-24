import 'package:flutter/material.dart';
import 'package:flutter_assignment_6/Gridview.dart';
import 'package:flutter_assignment_6/Listview.dart';
import 'package:flutter_assignment_6/starter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: 
      {
        '/listview': (context) => Listview(),
        '/gridview': (context) => Gridview(),
      },
      );
    
  }
}

