import 'package:flutter/material.dart';
/*
*  Import the appropriate firebase packages for backend auth
*
* */


class SignUpPage extends StatefulWidget {
  SignUpPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>{
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
             padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
             child: TextFormField(
               decoration: const InputDecoration(
                 hintText: 'Enter Email'
               ),
             ),
           ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter Password'
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Container(
                child: RaisedButton(
                  color: Colors.white,
                  onPressed: () {

                  },
                  textColor: Colors.blue,
                  child: Container(
                    decoration: const BoxDecoration(

                    ),
                    child: const Text('Submit', style: TextStyle(fontSize: 20)),
                  )
                )
              )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 150.0, horizontal: 10.0),
              child: RaisedButton(
                onPressed: () {

                },
                child: Container(
                  child: const Text('Already have an account, sign in here!', style: TextStyle(fontSize: 20)),
                )
              )
            ),
          ],
        ),
      ),
    );
  }
}