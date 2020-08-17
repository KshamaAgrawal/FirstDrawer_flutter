import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var Username = "admin";
  var Password = "admin1";

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
                      onPressed: () {
                        if(nameController.text == Username || passwordController.text == Password){
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
                       print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('Does not have account?'),
                        FlatButton(
                          textColor: Colors.blue,
                          child: Text(
                            'Sign in',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )
        )
    );
  }
}