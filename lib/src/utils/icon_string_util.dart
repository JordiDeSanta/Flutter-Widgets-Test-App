import 'package:flutter/material.dart';
import 'color_palette.dart';

final _icons = <String, IconData>{
  "accessibility": Icons.accessibility,
  "add_alert": Icons.add_alert,
  "folder_open": Icons.folder_open,
  "donut_large": Icons.donut_large,
  "input": Icons.input,
  "default_arrow": Icons.arrow_forward_ios,
  "slider": Icons.slow_motion_video_rounded,
  'list': Icons.list,
};

Icon getIcon(String iconName) {
  return Icon(_icons[iconName], color: iconsColor);
}
