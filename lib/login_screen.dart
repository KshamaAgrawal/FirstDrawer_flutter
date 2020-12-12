import 'package:flutter/material.dart';
import 'dart:async';
import 'home.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}
class _State extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(40),
                  child: Center(child: new Text('Login Form',style: TextStyle(fontSize: 22,),)),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    // controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'UserName',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    // controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    Navigator.push(  
                      context,  
                      MaterialPageRoute(builder: (context) => homePage()),  
                    ); 
                  },
                  textColor: Colors.blue,
                  child: Text('Forgot Password'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'), 
                    )),
                ],
            )
        )
    );
  }
}