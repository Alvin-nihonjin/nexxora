import 'package:flutter/material.dart';

class MenuModel {
  final IconData icon;
  final IconData activeIcon;
  final String label;
  final Color color;
  final Widget page;

  MenuModel({
    required this.icon,
    required this.activeIcon,
    required this.label,
    required this.color,
    required this.page,
  });
}
