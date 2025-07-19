import 'package:flutter/material.dart';
import 'property.dart'; // This is your Property model

final List<Property> dummyProperties = [
  Property(
    icon: Icons.wb_sunny,
    label: "Light",
    value: "Low",
    backgroundColor: Colors.yellow.shade100,
  ),
  Property(
    icon: Icons.water_drop,
    label: "Water",
    value: "250ml/day",
    backgroundColor: Colors.blue.shade100,
  ),
  Property(
    icon: Icons.thermostat,
    label: "Temp",
    value: "22-30°C",
    backgroundColor: Colors.orange.shade100,
  ),
  Property(
    icon: Icons.grass,
    label: "Growth",
    value: "Medium",
    backgroundColor: Colors.green.shade100,
  ),
];
