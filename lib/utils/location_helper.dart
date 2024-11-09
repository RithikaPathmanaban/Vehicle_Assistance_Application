// lib/utils/location_helper.dart

import 'package:geolocator/geolocator.dart';

class LocationHelper {
  /// Requests location permissions and returns the user's current location.
  static Future<Position?> getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) {
      return await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
    } else {
      // Handle permission denied or permanently denied cases here
      return null;
    }
  }
}
