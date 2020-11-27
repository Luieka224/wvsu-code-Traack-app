import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Nunito'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: LoginPage(),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _pageState = 0;

  var _backgroundColor = Colors.white;
  var _headingColor = Color(0xFF26A69A);

  double _loginWidth = 0;
  double _loginYOffset = 0;
  double _loginXOffset = 0;
  double _registerYOffset = 0;
  double windowWidth = 0;
  double windowHeight = 0;
  double _loginOpacity = 1;
  double _headingTop = 150;

  @override
  Widget build(BuildContext context) {
    windowHeight = MediaQuery.of(context).size.height;
    windowWidth = MediaQuery.of(context).size.width;

    switch (_pageState) {
      case 0:
        _backgroundColor = Colors.white;
        _headingColor = Color(0xFF26A69A);
        _loginXOffset = 0;
        _loginYOffset = windowHeight;
        _loginWidth = windowWidth;
        _loginOpacity = 1;
        _headingTop = 150;
        _registerYOffset = windowHeight;
        break;
      case 1:
        _backgroundColor = Color(0xFF26A69A);
        _headingColor = Colors.white;
        _loginYOffset = 270;
        _loginXOffset = 0;
        _registerYOffset = windowHeight;
        _loginWidth = windowWidth;
        _headingTop = 120;
        _loginOpacity = 1;
        break;
      case 2:
        _backgroundColor = Color(0xFF26A69A);
        _headingColor = Colors.white;
        _loginYOffset = 250;
        _loginXOffset = 20;
        _registerYOffset = 270;
        _loginWidth = windowWidth - 40;
        _headingTop = 110;
        _loginOpacity = 0.7;
        break;
    }
    return Stack(
      children: <Widget>[
        AnimatedContainer(
          curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(
            milliseconds: 800,
          ),
          color: _backgroundColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _pageState = 0;
                    });
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        AnimatedContainer(
                          curve: Curves.fastLinearToSlowEaseIn,
                          duration: Duration(
                            milliseconds: 800,
                          ),
                          margin: EdgeInsets.only(
                            top: _headingTop,
                          ),
                          child: Text(
                            'Hackthon pa nga wla title',
                            style: TextStyle(
                              color: _headingColor,
                              fontSize: 28.00,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.00,
                        ),
                        Text(
                          'we make live easier thru innovation',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: _headingColor,
                            fontSize: 16.00,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 05.00,
                  ),
                  child: Center(
                    child: Image.asset('images/people-mask.png'),
                  ),
                ),
                Container(
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_pageState != 0) {
                            _pageState = 0;
                          } else {
                            _pageState = 1;
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(50),
                        padding: EdgeInsets.all(17.00),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: _headingColor,
                            borderRadius: BorderRadius.circular(30.00)),
                        child: Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: Color(0xFFB2EBF2),
                              fontSize: 20.00,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _pageState = 2;
            });
          },
          child: AnimatedContainer(
            padding: EdgeInsets.all(32),
            width: _loginWidth,
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(
              milliseconds: 800,
            ),
            transform:
                Matrix4.translationValues(_loginXOffset, _loginYOffset, 1),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(_loginOpacity),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Text(
                        'Login To Continue',
                        style: TextStyle(
                          fontSize: 20.00,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    PrimaryButton(
                      btnText: "Log in",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    OutlineButton(
                      btnText: "Create New Account",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _pageState = 1;
            });
          },
          child: AnimatedContainer(
            padding: EdgeInsets.all(32),
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(
              milliseconds: 800,
            ),
            transform: Matrix4.translationValues(0, _registerYOffset, 1),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Text(
                        'Create a New Account',
                        style: TextStyle(
                          fontSize: 20.00,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    PrimaryButton(
                      btnText: "Create Account",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    OutlineButton(
                      btnText: "Back to Log in",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class InputwithIcon extends StatefulWidget {
  @override
  _InputwithIconState createState() => _InputwithIconState();
}

class _InputwithIconState extends State<InputwithIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(Icons.email),
          Container(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter Email',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PrimaryButton extends StatefulWidget {
  final String btnText;
  PrimaryButton({this.btnText});

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF26A69A),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
          widget.btnText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class OutlineButton extends StatefulWidget {
  final String btnText;
  OutlineButton({this.btnText});
  @override
  _OutlineButtonState createState() => _OutlineButtonState();
}

class _OutlineButtonState extends State<OutlineButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF26A69A),
          width: 2,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
          widget.btnText,
          style: TextStyle(
            color: Color(0xFF26A69A),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
