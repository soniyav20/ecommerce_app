import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shirts extends StatefulWidget {
  const Shirts({Key? key}) : super(key: key);

  @override
  _ShirtsState createState() => _ShirtsState();
}

class _ShirtsState extends State<Shirts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black38,
          title: Text('Shirts'),
        ),
        body: RawScrollbar(
          interactive: true,
          thickness: 15.0,
          isAlwaysShown: true,
          thumbColor: Colors.grey,
          child: GridView.count(
              padding: EdgeInsets.all(8.0),
              childAspectRatio: (9 / 16),
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 0.0,
              children: List.generate(100, (index) {
                return Container(
                  //color: Colors.primaries[index % Colors.primaries.length],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child:
                            Center(child: Image.asset('assets/mockupone.png')),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cotton coat',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 12.0,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12.0,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12.0,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12.0,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12.0,
                                  color: Colors.amber,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Text(
                        '\$266.89',
                      ),
                    ],
                  ),
                );
              })),
        ));
  }
}
