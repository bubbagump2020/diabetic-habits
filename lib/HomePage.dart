import 'package:diabetichabits/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:diabetichabits/LogIn.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Column(
        children: <Widget>[
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 50.0),
           child: SizedBox(
             height: 50.0,
             width: double.infinity,
             child: RaisedButton(
               color: Colors.blue,
               textColor: Colors.white,
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => SignUpPage(),
                   ),
                 );
               },
               child: Text('Sign Up', style: TextStyle(fontSize: 25)),
             ),
           ),
         ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: SizedBox(
              height: 50.0,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Text('Log In', style: TextStyle(fontSize: 25)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  // Oauth2 Logic to login with Google
                },
                child: Text('Login with Google!', style: TextStyle(fontSize: 25)),
              ),
            ),
          )
        ],
      ),
    );
  }
}