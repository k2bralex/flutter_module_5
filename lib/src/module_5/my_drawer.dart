import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  /// Lists of icons and titles in [buildMenuItems] to create widgets
  static const List<String> listTitle = ["Home", "Profile", "Images"];
  static const List<IconData> listIcons = [
    Icons.home,
    Icons.account_box,
    Icons.image
  ];

  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
            buildFooter(context)
          ],
        ));
  }

  ///MainMenu node
  Widget buildMenuItems(BuildContext context) => Expanded(
    flex: 1,
    child: Column(
          children: <ListTile>[
            for (int i = 0; i < listTitle.length; i++)
              ListTile(
                title: Text(
                  listTitle[i],
                  style: const TextStyle(fontSize: 20),
                ),
                leading: Icon(listIcons[i]),
                trailing: const IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: null,
                ),
                onTap: () => print("pressed ${listTitle[i]}"),
              )
          ],
        ),
  );

  ///Header node
  Widget buildHeader(BuildContext context) => Expanded(
    flex: 1,
    child: Container(
          padding: const EdgeInsets.only(top: 80),
          child: const CircleAvatar(
            radius: 80.0,
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(
                "https://phantom-marca.unidadeditorial.es/be0b6ac3dec349cb78189a06f0f7bfb5/resize/1320/f/webp/assets/multimedia/imagenes/2021/02/15/16133897437238.jpg"),
          ),
        ),
  );

  ///Footer node
  Widget buildFooter(BuildContext context) => Expanded(
    flex: 2,
    child: Container(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
              child: ElevatedButton(
                onPressed: () => print("Exit"),
                child: const Text("Exit"),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
              child: ElevatedButton(
                onPressed: () => print("Registration"),
                child: const Text("Registration"),
              ),
            )
          ],
        )),
  );
}
