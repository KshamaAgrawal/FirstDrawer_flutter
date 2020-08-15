import 'package:flutter/material.dart';  
import 'dart:async';

void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  final appTitle = 'Welcome to Flutter';  
  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      title: appTitle,  
      home: MyHomePage(title: appTitle),  
    );  
  }  
} 

class MyHomePage extends StatelessWidget {  
  final String title;  
  
  MyHomePage({Key key, this.title}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(title: Text(title)),  
      body: Center(child: Text('Hello, welcome to flutter')),  
      drawer: Drawer(  
        child: ListView( 
          padding: EdgeInsets.zero,  
          children: <Widget>[
            // new UserAccountsDrawerHeader( 
            //   accountName: new Text("Kshama Agrawal"),
            //   accountEmail: new Text("Kshama@securitytroops.com"),
            //   currentAccountPicture: new GestureDetector(
            //     child: new CircleAvatar(
            //       backgroundImage: new NetworkImage("https://dyl80ryjxr1ke.cloudfront.net/external_assets/hero_examples/hair_beach_v1785392215/result.jpeg"),
            //     ),
            //   ),
            //   decoration: new BoxDecoration(
            //     color: Colors.black,
            //     image: new DecorationImage(
            //       // fit: BoxFit.fill,
            //       image: new NetworkImage("https://dyl80ryjxr1ke.cloudfront.net/external_assets/hero_examples/hair_beach_v1785392215/result.jpeg")
            //     ),
            //   ),
            // ),    
            DrawerHeader(  
              child: Text(  
                'Drawer Header',  
                style: TextStyle(color: Colors.white, fontSize: 22),),  
              decoration: BoxDecoration(  
                color: Colors.cyan[300],  
              ),  
            ),  
            ListTile(  
              title: Text('page 1'),  
              // onTap: () {  
              //   Navigator.push(  
              //     context,  
              //     MaterialPageRoute(builder: (context) => page1Page()),  
              //   );  
              // },  
            ),
            ListTile(  
              title: Text('page 2'),  
              // onTap: () {  
              //   // Update the state of the app  
              //   // ...  
              //   // Then close the drawer  
              //   Navigator.push(  
              //     context,  
              //     MaterialPageRoute(builder: (context) => page2Page()),  
              //   );  
              // },  
            ),
            // new Divider(),
            ListTile(  
              title: Text('close', style: TextStyle(color: Colors.deepOrange),),
              trailing: new Icon(Icons.cancel),  
              // onTap: () {  
              //   // Update the state of the app  
              //   // ...  
              //   // Then close the drawer  
              //   Navigator.push(  
              //     context,  
              //     MaterialPageRoute(builder: (context) => closePage()),  
              //   );  
              // },  
            ),  
          ],  
        ),  
      ),  
    );  
  }  
} 
  
// class page1Page extends StatelessWidget {  
//   @override  
//   Widget build(BuildContext context) {  
//     return Scaffold(  
//       appBar: AppBar(  
//         title: Text("page 1 Page"),  
//       ),  
//       body: Center(  
//         child: RaisedButton(  
//           onPressed: () {  
//             Navigator.pop(context);  
//           },  
//           child: Text('Go back!'),  
//         ),  
//       ),  
//     );  
//   }  
// }  
  
// class page2Page extends StatelessWidget {  
//   @override  
//   Widget build(BuildContext context) {  
//     return Scaffold(  
//       appBar: AppBar(  
//         title: Text("page 2 Page"),  
//       ),  
//       body: Center(  
//         child: RaisedButton(  
//           onPressed: () {  
//             Navigator.pop(context);  
//           },  
//           child: Text('Go back!'),  
//         ),  
//       ),  
//     );  
//   }  
// }

// class closePage extends StatelessWidget {  
//   @override  
//   Widget build(BuildContext context) {  
//     return Scaffold(  
//       appBar: AppBar(  
//         title: Text("close Page"),  
//       ),  
//       body: Center(  
//         child: RaisedButton(  
//           onPressed: () {  
//             Navigator.pop(context);  
//           },  
//           child: Text('Go back!'),  
//         ),  
//       ),  
//     );  
//   }  
// }  