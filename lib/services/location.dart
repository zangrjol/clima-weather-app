import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;

  Future<void> getLocation() async {
    // Check if location permissions are granted
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      // Request permission if denied
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are still denied, show a message
        print('Location permissions are denied');
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately
      print(
          'Location permissions are permanently denied, we cannot request permissions.');
      return;
    }

    // If permission is granted, get the location
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print('Failed to get location: $e');
    }
  }
}
