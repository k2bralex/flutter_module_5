import 'package:flutter/material.dart';

import 'package:flutter_module_5/src/module_5/homepage_module5.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: "Module 5"),
    );
  }
}



