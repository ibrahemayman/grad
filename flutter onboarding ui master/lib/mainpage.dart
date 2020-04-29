import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/chat.dart';

class mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _currentindex=0;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(leading: FlatButton(onPressed: (){Navigator.of(context).pop();}, child: new Icon(Icons.arrow_back),color: Colors.grey[100],),
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
          Icon(
            Icons.settings,
            color: Colors.yellow[600],
            size: 40,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 80),
            ),
            Padding(
              padding: EdgeInsets.all(30),
            ),
            SizedBox(height: 20.0),
            Image(
              image: AssetImage('assets/images/k.png'),
              height: 200,
              width: 200,
              alignment: Alignment.center,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(40),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      ('How are you feeling ?'),
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          fontFamily: 'Cairo-SemiBold'),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20),
                  ),
                  RaisedButton(
                    onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>chat()),);},
                    child: new Text('Talk to me'),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_currentindex,
        onTap: (value){
          _currentindex=value;

        },
        backgroundColor: Colors.grey[100],
        elevation:0,
        iconSize: 30,
//        selectedFontSize: 15,
//        unselectedFontSize: 25,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.select_all),
              title: Text('Self Care'),
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text('chat'),
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('Goals'),
              backgroundColor: Colors.amber),
        ],
      ),
    );
  }
}

