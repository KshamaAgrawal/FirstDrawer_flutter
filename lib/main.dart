import "package:flutter/material.dart";
import 'login_screen.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,                                          // remove debug banner form main.dart
      theme: ThemeData(primarySwatch: Colors.blue), home: LoginPage()
    );
  }
}


// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(
//         title: "MapCrash",
//       ),
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   final int counter;
//   MyHomePage({Key key, this.title, this.counter}) : super(key: key);
//   final String title;
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Column(
//         children: <Widget>[
//           Center(
//             child: AnimatedPadding(
//               duration: Duration(seconds: 5),
//               padding: EdgeInsets.only(left: this.counter.toDouble()),
//               child: Text("$counter"),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) {
//                 return MapPage();
//               },
//               fullscreenDialog: true,
//             ),
//           ).then((_) {
//             setState(() {
//               this.counter++;
//             });
//           });
//         },
//         tooltip: 'OpenMap',
//         child: Icon(Icons.map),
//       ),
//     );
//   }
// }
// class MapPage extends StatefulWidget {
//   @override
//   _MapPageState createState() => _MapPageState();
// }
// class _MapPageState extends State<MapPage> {
//   Completer<GoogleMapController> _controller = Completer();
//   final CameraPosition initalPosition = CameraPosition(
//     target: LatLng(46.949256, 7.348665),
//     zoom: 12,
//   );
//   final CameraPosition goToPosition =
//       CameraPosition(target: LatLng(47.946381, 7.535720), zoom: 12);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Map"),
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: GoogleMap(
//               myLocationButtonEnabled: false,
//               myLocationEnabled: false,
//               compassEnabled: false,
//               markers: {
//                 Marker(
//                   markerId: MarkerId("mark"),
//                   icon: BitmapDescriptor.defaultMarker,
//                   position: initalPosition.target,
//                   infoWindow: InfoWindow(title: "marker"),
//                 ),
//                 Marker(
//                   markerId: MarkerId("mark2"),
//                   icon: BitmapDescriptor.defaultMarker,
//                   position: goToPosition.target,
//                   infoWindow: InfoWindow(title: "marker2"),
//                 )
//               },
//               mapType: MapType.normal,
//               initialCameraPosition: initalPosition,
//               onMapCreated: (GoogleMapController controller) {
//                 _controller.complete(controller);
//               },
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () async {
//           final GoogleMapController controller = await _controller.future;
//           controller
//               .animateCamera(CameraUpdate.newCameraPosition(goToPosition))
//               .then((_) {
//             Navigator.pop(context);
//           });
//         },
//         label: Text('Crash'),
//         icon: Icon(Icons.report),
//       ),
//     );
//   }
// }