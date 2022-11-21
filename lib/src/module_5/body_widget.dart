import 'package:flutter/material.dart';
//Create widget for body area
class BodyWidget extends StatelessWidget {
  final String name;
  final MaterialAccentColor color;

  const BodyWidget({super.key, required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: color,
      child: Text(name),
    );
  }
}
