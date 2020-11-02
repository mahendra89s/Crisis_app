import 'package:crisis_app/Login.dart';
import 'package:crisis_app/Register.dart';
import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage('images/logo1.png'),
              ),
            ),
            RichText(
              text: TextSpan(
                  text: 'Welcome To ',
                  style: TextStyle(
                      fontFamily: 'KumbhSans',
                      fontSize: 30.0,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Calmity',
                      style: TextStyle(
                          fontFamily: 'KumbhSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: RaisedButton(
                    color: Colors.red,
                    padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontFamily: 'KumbhSans',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                )),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: RaisedButton(
                    color: Colors.red,
                    padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontFamily: 'KumbhSans',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
