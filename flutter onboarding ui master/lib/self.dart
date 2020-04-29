import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_onboarding_ui/books.dart';
import 'package:flutter_onboarding_ui/courses.dart';
import 'package:flutter_onboarding_ui/movies.dart';
import 'package:flutter_onboarding_ui/music.dart';


class self extends StatefulWidget {
  @override
  _selfState createState() => _selfState();
}

class _selfState extends State<self> {
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
        title: new Text('Self care',
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
                Container(
                  width: 400,
                  height: 200,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/aws.jpg'),fit: BoxFit.cover),border:Border.all(width: 5,color: Colors.black),borderRadius: BorderRadius.circular(25)),
                  child: FlatButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder:(context)=>movies(),));}, child:Text('Movies',style: TextStyle(color:Colors.white,fontSize:20,fontFamily: 'Cairo-SemiBold'),)),
                ),
                Padding(padding: EdgeInsets.all(20),),
                Container(
                  width: 400,
                  height: 200,
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/asd.jpg'),fit: BoxFit.cover),border:Border.all(width: 5,color: Colors.black),borderRadius: BorderRadius.circular(25)),
                  child: FlatButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder:(context)=>books(), ));}, child: Text('Books',style: TextStyle(color:Colors.white,fontSize:20,fontFamily: 'Cairo-SemiBold'),)),
                ),
                Padding(padding: EdgeInsets.all(20),),
                Container(
                  width: 400,
                  height: 200,
                  //color: Colors.green,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/afg.jpg'),fit: BoxFit.cover),border:Border.all(width: 5,color: Colors.black),borderRadius: BorderRadius.circular(25)),
                  child: FlatButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder:(context)=> music(),));}, child: Text('Music',style: TextStyle(color:Colors.white,fontSize:20,fontFamily: 'Cairo-SemiBold'),)),
                ),
                Padding(padding: EdgeInsets.all(20),),
                Container(
                  width: 400,
                  height: 200,
                  //color: Colors.green,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/nmb.jpg'),fit: BoxFit.cover),border:Border.all(width: 5,color: Colors.black),borderRadius: BorderRadius.circular(25)),
                  child: FlatButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder:(context)=>courses(), ));}, child: Text('Courses',style: TextStyle(color:Colors.white,fontSize:20,fontFamily: 'Cairo-SemiBold'),)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
