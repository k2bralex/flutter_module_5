import 'package:flutter/material.dart';

///Custom [BottomSheet] widget
class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  /*static const String lorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
      " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut "
      "enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut "
      "aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit "
      "in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur "
      "sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt "
      "mollit anim id est laborum.";*/

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        color: Colors.amberAccent,
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //const Text(lorem),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Expanded(flex: 1, child: Icon(Icons.credit_card),),
                Expanded(flex: 4, child: Text("Volume: ")),
                Expanded(flex: 1, child: Text("200 RUR"))
              ],
            ),
            ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Pay"))
          ],
        ));
  }
}
