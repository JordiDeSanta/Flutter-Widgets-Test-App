// Third Party
import 'package:flutter/material.dart';

// Own
import 'package:components/src/utils/color_palette.dart';
import 'package:flutter/services.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

String _name = '';
String _email = '';
String _password = '';

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Page'),
        backgroundColor: appBarColor,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _createInput(),
          Divider(height: 40),
          _createEmail(),
          Divider(height: 40),
          _createPassword(),
        ],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'AssDestructor666',
        icon: Icon(Icons.account_circle_outlined, color: iconsColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: iconsColor),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onChanged: (value) {
        setState(() {
          _name = value;
        });
      },
    );
  }

  Widget _createEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'your@example.com',
        labelText: 'Email',
        icon: Icon(Icons.email_outlined, color: iconsColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: iconsColor),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

  Widget _createPassword() {
    return TextField(
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        hintText: '#BigPassw0rd505',
        labelText: 'Password',
        icon: Icon(Icons.security_outlined, color: iconsColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: iconsColor),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onChanged: (value) {
        setState(() {
          _password = value;
        });
      },
    );
  }
}
