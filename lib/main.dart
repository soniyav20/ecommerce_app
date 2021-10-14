import 'package:ecommerce_app/categories.dart';
import 'package:ecommerce_app/drawer.dart';
import 'package:ecommerce_app/firstrow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce'),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      drawer: DrawerMenu(),
      body: Stack(children: [
        Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FirstRow(),
                SizedBox(
                  height: 20.0,
                ),
                Categories(),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Text(
                        'Last Product',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 50.0,
                      onPressed: () {},
                      child: Text('See all'),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset('assets/mockupone.png'),
                          height: 225.0,
                          width: 150.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Cotton coat',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
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
                            Icon(
                              Icons.star,
                              size: 12.0,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                        Text(
                          '\$266.89',
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset('assets/mockuptwo.png'),
                          height: 225.0,
                          width: 150.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Cotton coat',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
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
                            ),
                            Icon(
                              Icons.star,
                              size: 12.0,
                            ),
                          ],
                        ),
                        Text('\$350.32'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
              width: size.width,
              height: 72,
              child: Stack(
                //overflow: Overflow.visible,
                children: [
                  CustomPaint(
                    size: Size(size.width, 72),
                    painter: BNBCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.4,
                    child: FloatingActionButton(
                        backgroundColor: Colors.red,
                        child: Icon(Icons.crop),
                        elevation: 0.2,
                        onPressed: () {}),
                  ),
                  Container(
                    width: size.width,
                    height: 72,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.home,
                            color: currentIndex == 0 ? Colors.red : Colors.grey,
                          ),
                          onPressed: () {
                            setBottomBarIndex(0);
                          },
                          splashColor: Colors.white,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color:
                                  currentIndex == 1 ? Colors.red : Colors.grey,
                            ),
                            onPressed: () {
                              setBottomBarIndex(1);
                            }),
                        Container(
                          width: 20,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.apps,
                              color:
                                  currentIndex == 2 ? Colors.red : Colors.grey,
                            ),
                            onPressed: () {
                              setBottomBarIndex(2);
                            }),
                        IconButton(
                            icon: Icon(
                              Icons.person,
                              color:
                                  currentIndex == 3 ? Colors.red : Colors.grey,
                            ),
                            onPressed: () {
                              setBottomBarIndex(3);
                            }),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ]),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(40.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 10);
    canvas.drawShadow(path, Colors.black, 7, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
