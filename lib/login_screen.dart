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
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  
  login(String Username, String Password) async{
    print("function work");
    Map data = {
      'username': Username,
      'password': Password
    };
    var jsonData = null;
    var response = await http.post("https://testing.timestint.com/tsapi/v1/login/", body: data);
    print(response.statusCode);
    if(response.statusCode == 200){
      jsonData = json.decode(response.body);
      print(jsonData);
      Navigator.push(  
          context,  
          MaterialPageRoute(builder: (context) => homePage()),  
        );  
    }
    else{
      AlertDialog alert = AlertDialog(  
        title: Text("Simple Alert"),  
        content: Text("Invalid UserName and Password", style: TextStyle(color: Colors.red),),    
      ); 
      showDialog(  
        context: context,  
        builder: (BuildContext context) {  
          return alert;  
        },  
      );
    }
  }

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
                    controller: nameController,
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
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
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
                      onPressed: () => login(nameController.text, passwordController.text), 
                    )),
                ],
            )
        )
    );
  }
}