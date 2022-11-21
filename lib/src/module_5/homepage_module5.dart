import 'package:flutter/material.dart';

import 'package:flutter_module_5/src/lib_module_5.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageStateModule5();
}

class _MyHomePageStateModule5 extends State<MyHomePage> {
  int selectedIndex = 0;

  static const List<String> _bottomNavigationBarItemNames = [
    "Home",
    "Music",
    "Text"
  ];

  static const List<IconData> _bottomNavigationBarItemIcons = [
    Icons.home,
    Icons.library_music,
    Icons.text_fields
  ];

  ///BG colors
  static const List<MaterialAccentColor> _bodyColor = [
    Colors.redAccent,
    Colors.blueAccent,
    Colors.greenAccent
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
        title: Text(widget.title),
        actions: [
          //Change icon for endDrawer and event handler
          Builder(
            builder: (context) => IconButton(
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              icon: const Icon(Icons.account_circle),
            ),
          )
        ],
      ),
      drawer: const MyDrawer(),
      endDrawer: const MyEndDrawer(),

      ///use BodyWidget [list] to output by selected index in [BottomNavigationBar]
      body: BodyWidget(
        name: _bottomNavigationBarItemNames[selectedIndex],
        color: _bodyColor[selectedIndex],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Press',
        onPressed: () => showModalBottomSheet<void>(
          context: context,

          ///Use custom BottomSheet
          builder: (BuildContext context) => const MyBottomSheet(),
        ),
        child: const Icon(Icons.open_in_new),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: List<BottomNavigationBarItem>.generate(
          _bottomNavigationBarItemNames.length,
          (index) => BottomNavigationBarItem(
            icon: Icon(_bottomNavigationBarItemIcons[index]),
            label: _bottomNavigationBarItemNames[index],
          ),
        ),
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
