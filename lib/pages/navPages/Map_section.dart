// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
//
// class MapPage extends StatefulWidget {
//   @override
//   _MapPageState createState() => _MapPageState();
// }
//
// class _MapPageState extends State<MapPage> {
//   late GoogleMapController mapController;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Google Map'),
//       ),
//       body: GoogleMap(
//         onMapCreated: (controller) {
//           print("wow");
//           setState(() {
//             mapController = controller;
//           });
//         },
//         initialCameraPosition: CameraPosition(
//           target: LatLng(37.7749, -122.4194),
//           zoom: 12,
//         ),
//       )
//       // GoogleMap(
//       //   onMapCreated: (controller) {
//       //     setState(() {
//       //       mapController = controller;
//       //     });
//       //   },
//       //   initialCameraPosition: CameraPosition(
//       //     target: LatLng(37.7749, -122.4194),
//       //     zoom: 12,
//       //   ),
//       //   markers: {
//       //     Marker(
//       //       markerId: MarkerId('san_francisco'),
//       //       position: LatLng(37.7749, -122.4194),
//       //       infoWindow: InfoWindow(
//       //         title: 'San Francisco',
//       //         snippet: 'The City by the Bay',
//       //       ),
//       //     ),
//       //   },
//       // ),
//
//     );
//
//   }
// }
