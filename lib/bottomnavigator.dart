import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 20.0,
        backgroundColor: Colors.black12,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black12,
            activeIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.home_filled),
              color: Colors.red,
            ),
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.home_filled),
              color: Colors.black54,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                color: Colors.black54,
              ),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                color: Colors.red,
              ),
            ),
            label: 'Fav',
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.apps),
                color: Colors.red,
              ),
            ),
            icon: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.apps),
                color: Colors.black54,
              ),
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
              activeIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
                color: Colors.red,
              ),
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
                color: Colors.black54,
              ),
              label: 'Account'),
        ]);
  }
}
