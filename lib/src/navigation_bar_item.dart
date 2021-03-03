import 'package:flutter/material.dart';

class TitledNavigationBarItem {

  /// The title of this item.
  final Widget title;

  /// The icon of this item.
  ///
  /// If this is not a [Icon] widget, you must handle the color manually.
  final Widget icon;

  /// The background color of this item.
  ///
  /// Defaults to [Colors.white].
  final Color backgroundColor;

  TitledNavigationBarItem({
    required this.icon,
    required this.title,
    this.backgroundColor = Colors.white,
  });
}
