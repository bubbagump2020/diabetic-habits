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
    return Scaffold(
      appBar: AppBar(

      ),
    );
  }
}