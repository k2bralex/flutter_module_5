import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 80),
      child: const CircleAvatar(
        radius: 80.0,
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(
            "https://phantom-marca.unidadeditorial.es/be0b6ac3dec349cb78189a06f0f7bfb5/resize/1320/f/webp/assets/multimedia/imagenes/2021/02/15/16133897437238.jpg"),
      ),
    );
  }
}
