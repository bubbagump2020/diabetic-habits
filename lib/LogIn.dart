import 'package:diabetichabits/HomePage.dart';
import 'package:flutter/material.dart';

/*
*  Import the appropriate firebase packages for backend auth
*
* */

class LoginPage extends StatelessWidget{
  static const String _title = 'Login';
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text(_title)),
      body: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget{
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm>{
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'Enter Email'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: TextFormField(
                obscureText: true,
                controller: _passwordController,
                decoration: const InputDecoration(
                  hintText: 'Enter Password'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: RaisedButton(
                onPressed: () {
                  // Login Logic
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      )
    );
  }
}