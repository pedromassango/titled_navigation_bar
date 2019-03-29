import 'package:flutter/material.dart';

class TitledNavigationBarItem {
  final String title;
  final IconData icon;
  final Color backgroundColor;

  TitledNavigationBarItem({
    @required this.icon,
    @required this.title,
    this.backgroundColor = Colors.white,
  });
}
