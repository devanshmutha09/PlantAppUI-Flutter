import 'package:flutter/material.dart';

class Property {
  final IconData icon;
  final String label;
  final String value;
  final Color backgroundColor;

  Property({
    required this.icon,
    required this.label,
    required this.value,
    required this.backgroundColor,
  });
}