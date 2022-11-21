import 'package:flutter/material.dart';

import 'drawer_footer.dart';
import 'drawer_menu.dart';
import 'drawer_header.dart';

class MyDrawer extends StatelessWidget {
  static const List<String> listTitle = ["Home", "Profile", "Images"];
  static const List<IconData> listIcons = [
    Icons.home,
    Icons.account_box,
    Icons.image
  ];
  static const List<String> footerButtons = ['Exit', 'Registration'];

  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          MyDrawerHeader(),
          DrawerMenu(titles: listTitle, icons: listIcons),
          DrawerFooter(buttons: footerButtons),
        ],
      ),
    );
  }
}
