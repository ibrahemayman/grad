import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_onboarding_ui/mainpage.dart';
import 'package:flutter_onboarding_ui/mainpage1.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.amber[300] : Color(0xFFCFD8DC),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SingleChildScrollView(
          child: Container(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.4, 0.7, 0.9],
                colors: [
//                Color(0xFF3594DD),
//                Color(0xFF4563DB),
//                Color(0xFF5036D5),
//                Color(0xFF5B16D0),

                  Color(0xB3FFFFFF),
                  Color(0x99FFFFFF),
                  Color(0x8AFFFFFF),
                  Color(0x62FFFFFF),
                ],
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  color: Colors.grey[50],
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => selfcare()),
                      );
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 600.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      /////////////////////////////////page ely feha bai5od esmoh//////////////////////////////////////////

                      Scaffold(
                        body: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 0, bottom: 0, right: 0, top: 0),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Image(
                                image: AssetImage('assets/images/hh.png'),
                                height: 300,
                                width: 300,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                            ),
                            Center(
                              child: Column(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      ('  Hi, oh can I Know your name'),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          fontFamily: ' Cairo-Regular'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(20),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 50.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    icon: Icon(Icons.text_fields),
                                    suffix: Container(
                                      width: 5,
                                      height: 5,
                                    ),
                                    prefixIcon: Icon(Icons.person),
                                    prefixText: "Name:",
                                    hintText: "Your name",
                                    hintStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(100))),
                                enabled: true,
                                maxLength: 15,
                                maxLengthEnforced: false,
                                style: new TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Cairo-Regular',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      /////////////////////a5r el.slide aheh ely bai50d feha esmoh ///////////////////////////////////////

                      ////////////////////// slide ely feha change mood//////////////////////////////////////////////////
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/t.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 30.0),

                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                ('Change your mood'),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    fontFamily: ' Cairo-Regular'),
                              ),
                            ),

//                            Text(
//                              'Connect people\naround the world',
//                              style: kTitleStyle,
//                            ),

                            SizedBox(height: 15.0),

                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                ('Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.'),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Cairo-SemiBold'),
                              ),
                            ),

//                            Text(
//                              'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
//                              style: kSubtitleStyle,
//                            ),
                          ],
                        ),
                      ),
                      //////////////////////////////////a5r slide change mood////////////////////////////////////////////

                      ////////////////////////////////////////////slide ely feha achieve goals//////////////////////////
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/c.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                ('Achievs Goals!'),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    fontFamily: 'Cairo-Regular'),
                              ),
                            ),

//                           Text(('Live your life smarter\nwith us!'),style:TextStyle(color: Colors.black),),
//                            Text(
//                              'Live your life smarter\nwith us!',
//                              style: kTitleStyle,
//                            ),

                            SizedBox(height: 15.0),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                ('Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.!'),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Cairo-SemiBold'),
                              ),
                            ),

//                            Text(
//                              'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
//                              style: kSubtitleStyle,
//                            ),
                          ],
                        ),
                      ),
                      ////////////////////////////////////////////slide ely a5rha achieve goals//////////////////////////

                      ////////////////////////////////////////////slide ely feha No ads-free//////////////////////////
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/x.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 30.0),

                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                ('No Ads-Free!'),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    fontFamily: 'Cairo-Regular'),
                              ),
                            ),

//                            Text(
//                              'Get a new experience\nof imagination',
//                              style: kTitleStyle,
//                            ),

                            SizedBox(height: 15.0),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                ('Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.'),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Cairo-SemiBold'),
                              ),
                            ),

//                            Text(
//                              'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
//                              style: kSubtitleStyle,
//                            ),
                          ],
                        ),
                      ),
                      ////////////////////////////////////////////slide ely a5rha No ads-free//////////////////////////
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: FlatButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 85.0,
              width: double.infinity,
              color: Colors.amber[300],
              child: GestureDetector(
                onTap: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => selfcare()),
                  )
                },
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      'Get started',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo-Regular',
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
