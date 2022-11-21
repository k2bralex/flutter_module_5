import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final List<String> titles;
  final List<IconData> icons;
  const DrawerMenu({super.key, required this.titles, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...Iterable<int>.generate(titles.length).toList().map(
              (index) => ListTile(
            title: Text(
              titles[index],
              style: const TextStyle(fontSize: 20),
            ),
            leading: Icon(icons[index]),
            trailing: const IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: null,
            ),
            onTap: () => print("pressed ${titles[index]}"),
          ),
        ),
      ],
    );
  }
}
