import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:crisis_app/Login.dart';
//import 'bloc.navigation_bloc/navigation_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // FirebaseUser user;
  // bool isloggedIn = false;
  // checkAuthentification() async {
  //   _auth.authStateChanges().listen((user) {
  //     if (user == null) {
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => Login()));
  //     }
  //   });
  // }

  getUser() async {
    // FirebaseUser firebaseUser = await _auth.currentUser();
    // await firebaseUser?.reload();
    // firebaseUser = await _auth.currentUser();
    // if (firebaseUser != null) {
    //   setState(() {
    //     this.user = firebaseUser;
    //     this.isloggedIn = true;
    //   });
    // }
  }

  // @override
  // void initState() {
  //   this.checkAuthentification();
  //   this.getUser();
  // }
  signOut() async {
    await _auth.signOut();
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          // child: !isloggedIn
          //     ? CircularProgressIndicator()
          //     : Column(
          //         children: <Widget>[
          //           Container(
          //               child: Text('Welcome',
          //                   style: TextStyle(
          //                     fontSize: 50.0,
          //                   )))
          //         ],
          //       )),
          child: Center(child: Text('Homepage')),
        ),
        Container(
            child: RaisedButton(
                color: Colors.red, onPressed: signOut, child: Text('Signout'))),
      ],
    ));
  }
}
