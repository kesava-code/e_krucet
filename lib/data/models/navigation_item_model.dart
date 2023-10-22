import 'package:flutter/material.dart';

class NavigationItem {
  final String name;
  final Icon icon;
  final String path;
  final int index;
  NavigationItem({required this.icon, required this.name, required this.path, required this.index});
}
