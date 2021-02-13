import 'package:flutter/material.dart';
import 'color_palette.dart';

final _icons = <String, IconData>{
  "accessibility": Icons.accessibility,
  "add_alert": Icons.add_alert,
  "folder_open": Icons.folder_open,
  "default_arrow": Icons.arrow_forward_ios,
};

Icon getIcon(String iconName) {
  return Icon(_icons[iconName], color: iconsColor);
}
