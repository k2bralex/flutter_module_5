import 'package:flutter/material.dart';

///Custom [BottomSheet] widget
class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

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
              Expanded(
                flex: 1,
                child: Icon(Icons.credit_card),
              ),
              Expanded(
                flex: 4,
                child: Text("Volume: "),
              ),
              Expanded(
                flex: 1,
                child: Text("200 RUR"),
              )
            ],
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Pay"),
          )
        ],
      ),
    );
  }
}
