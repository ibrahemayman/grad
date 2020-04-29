import 'package:flutter/material.dart';

class goal extends StatefulWidget {
  @override
  _goalState createState() => _goalState();
}

class _goalState extends State<goal> {
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
        title: new Text('Goals',
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
