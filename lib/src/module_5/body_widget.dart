import 'package:flutter/material.dart';
//Create widget for body area
class BodyWidget extends StatefulWidget {
  int pageNumber;
  ///List of Pages
  static const List<Text> _names = [
    Text("Home"),
    Text("Music"),
    Text("Text")
  ];
  ///BG colors
  static const List<MaterialAccentColor> _currentColor = [
    Colors.redAccent,
    Colors.blueAccent,
    Colors.greenAccent
  ];

  BodyWidget({super.key, required this.pageNumber});

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}
///Return [Container] colored and text due index
///TODO modifications if any changes in BottomNavigationBar logic
///
class _BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: BodyWidget._currentColor[widget.pageNumber],
      child: BodyWidget._names[widget.pageNumber],
    );
  }
}
