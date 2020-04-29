import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/takephoto.dart';

class chat extends StatefulWidget {
  @override
  _chatState createState() => _chatState();
}
class _chatState extends State<chat> {
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
        title: new Text('Chat',
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
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(115),
            ),
            SizedBox(height: 100.0),
            Align(
              alignment: Alignment.center,
              child: Text(
                ('Choose way to get your emotion!'),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    fontFamily: 'Cairo-Regular'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            SizedBox(width: 10.0),
            Icon(
              Icons.camera_front,
              color: Colors.black,
              size: 60.0,
            ),
            Padding(
              padding: EdgeInsets.all(15),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => takephoto(),
                          ));
                    },
                    child: new Text('Open Camera'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 30.0),
                    textColor: Colors.white,
                    color: Colors.yellow[600],
                    elevation: 15.0,
                    splashColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
