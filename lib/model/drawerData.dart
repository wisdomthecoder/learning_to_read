import 'package:flutter/widgets.dart';

class DrawerData {
  String name;
  Function onTap;
  IconData icon;

  DrawerData({required this.name, required this.onTap, required this.icon});
}
