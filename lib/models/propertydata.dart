import 'package:flutter/material.dart';
import 'package:plant_app_ui/models/property.dart';

final List<Property> dummyProperties = [
  Property(
    icon: Icons.wb_sunny_outlined,
    label: 'Light',
    value: '40%',
    backgroundColor: Colors.yellow.shade100,
  ),
  Property(
    icon: Icons.water_drop_outlined,
    label: 'Water',
    value: '2 L',
    backgroundColor: Colors.blue.shade100,
  ),
  Property(
    icon: Icons.thermostat_outlined,
    label: 'Temp',
    value: '28°C',
    backgroundColor: Colors.red.shade100,
  ),
  Property(
    icon: Icons.eco_outlined,
    label: 'Growth',
    value: 'Fast',
    backgroundColor: Colors.green.shade100,
  ),
];
