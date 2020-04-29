import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/action.dart';
import 'package:flutter_onboarding_ui/comedy.dart';
import 'package:flutter_onboarding_ui/romantic.dart';


class movies extends StatefulWidget {
  @override
  _moviesState createState() => _moviesState();
}

class _moviesState extends State<movies> {
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
        title: new Text('Movies',
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
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.topCenter,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(20),),
                Container(
                  width: 400,
                  height: 200,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/hgf.jpg'),fit: BoxFit.cover),border:Border.all(width: 5,color: Colors.black),borderRadius: BorderRadius.circular(25)),
                  child: FlatButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder:(context)=>action(),));}, child: Text('Action',style: TextStyle(color:Colors.white,fontSize:20,fontFamily: 'Cairo-SemiBold'),)),
                ),
                Padding(padding: EdgeInsets.all(20),),
                Container(
                  width: 400,
                  height: 200,
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/rte.jpg'),fit: BoxFit.cover),border:Border.all(width: 5,color: Colors.black),borderRadius: BorderRadius.circular(25)),
                  child: FlatButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder:(context)=>romantic(), ));}, child: Text('Romantic',style: TextStyle(color:Colors.white,fontSize:20,fontFamily: 'Cairo-SemiBold'),)),
                ),
                Padding(padding: EdgeInsets.all(20),),
                Container(
                  width: 400,
                  height: 200,
                  //color: Colors.green,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/wwt.jpg'),fit: BoxFit.cover),border:Border.all(width: 5,color: Colors.black),borderRadius: BorderRadius.circular(25)),
                  child: FlatButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder:(context)=>comedy(),));}, child: Text('Comedy',style: TextStyle(color:Colors.white,fontSize:20,fontFamily: 'Cairo-SemiBold'),)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
