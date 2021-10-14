import 'package:flutter/material.dart';

import 'shirtpage.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 5.0,
            ),
            Column(
              children: [
                Container(
                  height: 60.0,
                  width: 60.0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Shirts()));
                    },
                    icon: Icon(Icons.dry_cleaning),
                    color: Colors.black54,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.black12,
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  'Shirts',
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 60.0,
                  width: 60.0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.format_paint_sharp),
                    color: Colors.black54,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.black12,
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  'T-Shirt',
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 60.0,
                  width: 60.0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.palette),
                    color: Colors.black54,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.black12,
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  'Dress',
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 60.0,
                  width: 60.0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.accessibility_outlined),
                    color: Colors.black54,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.black12,
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  'Jeans',
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 60.0,
                  width: 60.0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.watch),
                    color: Colors.black54,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.black12,
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  'Watch',
                ),
              ],
            ),
            SizedBox(
              width: 5.0,
            )
          ],
        ),
      ],
    );
  }
}
