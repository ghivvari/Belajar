// lib/main.dart

import 'package:flutter/material.dart';
import 'package:project/pages/landing_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clothes App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: LandingPage(),
      debugShowCheckedModeBanner: false, // Removes the debug banner
    );
  }
}
