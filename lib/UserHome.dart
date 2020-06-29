import 'package:flutter/material.dart';

class UserHome extends StatelessWidget{
  // User Homepage Container widget
  static const String _title = 'User Home';
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text(_title)),
    );
  }
}