import 'package:flutter/material.dart';

class romantic extends StatefulWidget {
  @override
  _romanticState createState() => _romanticState();
}

class _romanticState extends State<romantic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: new Icon(Icons.arrow_back_ios),
          color: Colors.grey[100],
        ),
        title: new Text('Romantic',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontFamily: 'Cairo-SemiBold',
            )),
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.grey[100],
        //leading: new Icon(Icons.keyboard_backspace,color: Colors.black,),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.settings),
            onPressed: () {},
            padding: EdgeInsets.only(right: 15),
            color: Colors.yellow[600],
            iconSize: 40,
            splashColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
