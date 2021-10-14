import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  var Texty = TextStyle(
    fontSize: 15.0,
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        addRepaintBoundaries: true,
        children: [
          Container(
            height: 80.0,
            child: DrawerHeader(
              child: Text(
                'Menu',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Products',
              style: Texty,
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text(
              'Collections',
              style: Texty,
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text(
              'Account Details',
              style: Texty,
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text(
              'Cart',
              style: Texty,
            ),
            onTap: () {},
          ),
          Divider(),
        ],
      ),
    );
  }
}
