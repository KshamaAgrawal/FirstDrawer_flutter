import 'package:flutter/material.dart';  
import 'dart:async';
// import 'package:flutter_login/flutter_login.dart';
// import 'dashboard_screen.dart';
// import 'login_screen.dart';

void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  final appTitle = 'Welcome to Flutter';  
  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      debugShowCheckedModeBanner: false,                                          // remove debug banner 
      title: appTitle,  
      home: MyHomePage(title: appTitle),  
    );  
  }  
} 

class MyHomePage extends StatelessWidget { 
  int _cIndex = 0;

  void _incrementTab(index) {
    setState() {
      _cIndex = index;
      print(_cIndex);
    };
  } 
  // var username = kshama;
  // var password;
  // print(username),
  // print(password),

  final String title;  
  
  MyHomePage({Key key, this.title}) : super(key: key);

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(title: Text(title)),  
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://dyl80ryjxr1ke.cloudfront.net/external_assets/hero_examples/hair_beach_v1785392215/result.jpeg"),
          fit: BoxFit.cover)
          ),
        child: Center(child: Text('Hello, welcome to flutter', style: TextStyle(color: Colors.orange, fontSize: 22,),))
        ),
      ),
      drawer: Drawer(  
        child: ListView( 
          padding: EdgeInsets.zero,  
          children: <Widget>[
            new UserAccountsDrawerHeader( 
              accountName: new Text("Kshama Agrawal"),
              accountEmail: new Text("Kshama@securitytroops.com"),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage("https://dyl80ryjxr1ke.cloudfront.net/external_assets/hero_examples/hair_beach_v1785392215/result.jpeg"),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.black,
                image: new DecorationImage(
                  image: new NetworkImage("https://flutter-examples.com/wp-content/uploads/2020/02/dice.jpg"),
                ),
              ),
            ),    
            DrawerHeader(  
              child: Text('Drawer Header', style: TextStyle(color: Colors.white, fontSize: 22),),  
              decoration: BoxDecoration(  
                color: Colors.cyan[300],  
              ),  
            ),  
            ListTile(  
              title: Text('page 1'),  
              onTap: () {  
                Navigator.push(  
                  context,  
                  MaterialPageRoute(builder: (context) => page1Page()),  
                );  
              },  
            ),
            ListTile(  
              title: Text('page 2'),  
              onTap: () {  
                Navigator.push(  
                  context,  
                  MaterialPageRoute(builder: (context) => page2Page()),  
                );  
              },  
            ),
            new Divider(),
            ListTile(  
              title: Text('Close', style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold),),
              trailing: new Icon(Icons.cancel, color: Colors.red.shade400,),
              onTap: () => Navigator.of(context).pop(),  
            ),  
          ],  
        ),  
      ), 
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _cIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: new Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: new Text('Business')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: new Text('School')
          ),
        ],
        onTap: (index){
            _incrementTab(index);
        },
      ),
    );  
  }  
} 
  
class page1Page extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text("Welcome at page 1"),  
      ),  
      body: Center(  
        child: RaisedButton(  
          onPressed: () {  
            Navigator.pop(context);  
          },  
          child: Text('Go back!'),  
        ),  
      ),  
    );  
  }  
}  
  
class page2Page extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text("Welcome at page 2"),  
      ),  
      body: Center(  
        child: RaisedButton(  
          onPressed: () {  
            Navigator.pop(context);  
          },  
          child: Text('Go back!'),  
        ),  
      ),  
    );  
  }  
}

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FlutterLogin(
//       title: 'ECORP',
//       logo: 'assets/images/ecorp.png',
//       onLogin: (_) => Future(null),
//       onSignup: (_) => Future(null),
//       onSubmitAnimationCompleted: () {
//         Navigator.of(context).pushReplacement(MaterialPageRoute(
//           builder: (context) => DashboardScreen(),
//         ));
//       },
//       onRecoverPassword: (_) => Future(null),
//     );
//   }
// }