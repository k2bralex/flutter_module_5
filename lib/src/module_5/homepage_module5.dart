import 'package:flutter/material.dart';

import '../../main.dart';
import 'package:flutter_module_5/src/lib_module_5.dart';

class MyHomePageStateModule5 extends State<MyHomePage> {
  int selectedIndex = 0;

  static List<BodyWidget> list = [
    BodyWidget(pageNumber: 0),
    BodyWidget(pageNumber: 1),
    BodyWidget(pageNumber: 2),
  ];

  ///Event handler for [BottomNavigationBar]
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Module 5"),
        actions: [
          //Change icon for endDrawer and event handler
          Builder(
              builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  icon: const Icon(Icons.account_circle)))
        ],
      ),
      drawer: const MyDrawer(),
      endDrawer: const MyEndDrawer(),
      ///use BodyWidget [list] to output by selected index in [BottomNavigationBar]
      body: list[selectedIndex],
      floatingActionButton: FloatingActionButton(
        tooltip: 'Press',
        onPressed: () => showModalBottomSheet<void>(
            context: context,
            ///Use custom BottomSheet
            builder: (BuildContext context) => const MyBottomSheet()),
        child: const Icon(Icons.open_in_new),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music), label: "Music"),
          BottomNavigationBarItem(icon: Icon(Icons.text_fields), label: "Text"),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
