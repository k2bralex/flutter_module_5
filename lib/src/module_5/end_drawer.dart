import 'package:flutter/material.dart';

///Use [CircleAvatar] widget to create user icon with network image
class MyEndDrawer extends StatelessWidget {
  const MyEndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 100.0,
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(
                "https://phantom-marca.unidadeditorial.es/be0b6ac3dec349cb78189a06f0f7bfb5/resize/1320/f/webp/assets/multimedia/imagenes/2021/02/15/16133897437238.jpg"),
          ),
          Container(margin: const EdgeInsets.only(top: 10), child: const Text("Username")),
        ],
      ),
    );
  }
}
