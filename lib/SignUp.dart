import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:diabetichabits/UserHome.dart';
/*
*  Import the appropriate firebase packages for backend auth
*
* */


class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  static const String _title = 'Sign Up';
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfirmationController = TextEditingController();

  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  bool _signingup = false;
  String _username;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  _signup () async {
    if(_passwordController.text.trim() != _passwordConfirmationController.text.trim()){
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text('Passwords Do Not Match'),
        duration: Duration(seconds: 3),
      ));
    } else {
      setState(() {
        _signingup = true;
      });
     if (_signingup){
       _scaffoldKey.currentState.showSnackBar(SnackBar(
         content: Text('Signing you up. Please wait...'),
         duration: Duration(seconds: 3),
       ));
     }
    }

    try{
      FirebaseUser _user = (await _firebaseAuth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      )).user;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UserHome()
        ),
      );
      setState(() {
        _username = _usernameController.text.trim();
      });
    } catch (ex) {

    }




  }

  Widget build(BuildContext context){
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: const Text(_title)),
      body: Form(
        child: Container(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10.0),
                child: TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    hintText: 'Username'
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: 'Password'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                child: TextFormField(
                  controller: _passwordConfirmationController,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password'
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.center,
                  child: SizedBox(
                    width: 300,
                    child: RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        _signup();
                      },
                      child:  Text('Submit', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                )
              )
            ],
          ),
        )
      )
    );
  }
}