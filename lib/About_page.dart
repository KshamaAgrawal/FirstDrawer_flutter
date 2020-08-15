import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override 
  _AboutPageState createState() => _AboutPageState();
  // final String pageText;
  // AboutPage(this.pageText);
}

class _AboutPageState extends State<AboutPage> { 
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("title"),
      ),
      body: new Center(
        // child: new Text(pageText),
        child: new Text("about page"),
      ), 
    ); 
  }
}