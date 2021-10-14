import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstRow extends StatefulWidget {
  const FirstRow({Key? key}) : super(key: key);

  @override
  _FirstRowState createState() => _FirstRowState();
}

class _FirstRowState extends State<FirstRow> {
  createAlertDialogue(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
              elevation: 8.0,
              backgroundColor: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'You\'ll be notified about the launch of new products from now..🥳🥳🎉🎊✨',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Colors.grey,
                    child: Text(
                      'Ok',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 15.0,
        ),
        IconButton(
          onPressed: () {
            createAlertDialogue(context);
          },
          icon: Icon(Icons.notifications_on_outlined),
          color: Colors.black,
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              fillColor: Colors.black12,
              filled: true,
              icon: Icon(
                Icons.search,
                color: Colors.black38,
              ),
              hintText: 'Find your product',
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        Container(
          margin: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black)),
          height: 40.0,
          width: 40.0,
          child: Image(
            image: AssetImage('assets/photo.jpg'),
          ),
        ),
        SizedBox(
          width: 15.0,
        ),
      ],
    );
  }
}
