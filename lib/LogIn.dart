import 'package:diabetichabits/SplashPage.dart';
import 'package:flutter/material.dart';

/*
*  Import the appropriate firebase packages for backend auth
*
* */

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  static const String _title = 'Login';
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  Widget build(BuildContext content){
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: const Text(_title)),
      body: Form(
        child: Container(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Email'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                child: TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: 'Password'
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
                        // Login function here
                      },
                      child: Text('Submit', style: TextStyle(fontSize: 20)),
                    ),
                  )
                ),
              )
            ],
          )
        )
      )
    );
  }
}