import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BusStopNearMeScreen extends StatelessWidget {
  const BusStopNearMeScreen({super.key});

  static const CameraPosition initialPosition = CameraPosition(
    target: LatLng(17.385044, 78.486671), // Hyderabad example
    zoom: 14,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bus Stops Near Me"),
      ),
      body: GoogleMap(
        initialCameraPosition: initialPosition,
        markers: {
          const Marker(
            markerId: MarkerId("bus_stop_1"),
            position: LatLng(17.385044, 78.486671),
            infoWindow: InfoWindow(title: "Bus Stop"),
          ),
        },
      ),
    );
  }
}