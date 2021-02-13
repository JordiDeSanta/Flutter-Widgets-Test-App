import 'package:flutter/material.dart';

final _icons = <String, Icon>{
  "accessibility": Icon(Icons.accessibility),
  "add_alert": Icon(Icons.add_alert),
  "folder_open": Icon(Icons.folder_open),
};

Icon getIcon(String iconName) {
  return _icons[iconName];
}
