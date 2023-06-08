import 'package:airbnb_passport/models/models.dart';

/// Apartment model.
class Apartment {
  const Apartment({
    required this.host,
    required this.location,
    required this.dates,
    required this.pricePerNight,
    required this.imagePath,
  });

  /// Apartment host.
  final Host host;

  /// Place where apartment is located.
  final String location;

  /// Near dates when apartment is available.
  final String dates;

  // Price per night.
  final double pricePerNight;

  // Path to the image of the apartment.
  final String imagePath;
}
