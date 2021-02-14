// Third Party
import 'package:flutter/material.dart';

// Own
import 'package:components/src/utils/color_palette.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
        backgroundColor: appBarColor,
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 100,
          child: RaisedButton(
            child: Text(
              'Hello',
              style: TextStyle(color: Colors.white),
            ),
            color: iconsColor,
            shape: StadiumBorder(),
            onPressed: () => _showAlert(context),
          ),
        ),
      ),
    );
  }
}

void _showAlert(BuildContext alertContext) {
  showDialog(
    barrierDismissible: true,
    context: alertContext,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text(
          "Alert",
          textAlign: TextAlign.center,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("This is a fucking alert!"),
            Divider(color: Colors.transparent),
            FlutterLogo(size: 100),
          ],
        ),
        actions: [
          FlatButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Ok'),
          ),
          FlatButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Cancel'),
          ),
        ],
      );
    },
  );
}
