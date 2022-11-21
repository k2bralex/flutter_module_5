import 'package:flutter/material.dart';

class DrawerFooter extends StatelessWidget {
  final List<String> buttons;
  const DrawerFooter({super.key, required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...buttons.map(
                  (button) => Container(
                padding:
                const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.white),
                  onPressed: () => print(button),
                  child: Text(button),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
