import 'package:flutter/material.dart';

import 'package:task/screens/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
 const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  void set(){
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}

