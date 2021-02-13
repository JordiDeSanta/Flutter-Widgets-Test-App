import 'package:flutter/material.dart';

Color _iconsColor = Color.fromARGB(255, 90, 178, 218);

final _icons = <String, Icon>{
  "accessibility": Icon(Icons.accessibility, color: _iconsColor),
  "add_alert": Icon(Icons.add_alert, color: _iconsColor),
  "folder_open": Icon(Icons.folder_open, color: _iconsColor),
  "default_arrow": Icon(Icons.arrow_forward_ios, color: _iconsColor),
};

Icon getIcon(String iconName) {
  return _icons[iconName];
}
