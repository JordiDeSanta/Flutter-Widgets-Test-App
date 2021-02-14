// Third Party
import 'package:flutter/material.dart';

// Own
import 'package:components/src/utils/color_palette.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        backgroundColor: appBarColor,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Icon(Icons.person),
              backgroundColor: iconsColor,
              foregroundColor: cardBGColor,
            ),
          ),
        ],
      ),
    );
  }
}
