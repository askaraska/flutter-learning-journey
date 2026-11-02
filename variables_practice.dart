import 'package:flutter/material.dart';

void main() {
  var city = 'Ramanathapuram';
  final currentYear = 2026;
  const appName = 'My First Flutter App';

  debugPrint('City: $city');
  debugPrint('Year: $currentYear');
  debugPrint('App: $appName');

  city = 'Chennai';
  debugPrint('Updated city: $city');
}
