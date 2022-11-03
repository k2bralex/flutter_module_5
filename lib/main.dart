import 'package:flutter/material.dart';

import 'package:flutter_module_5/src/module_5/homepage_module5.dart';

void main() => runApp(const FlutterModules());

class FlutterModules extends StatelessWidget {
  const FlutterModules({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basics',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => MyHomePageStateModule5();
}




