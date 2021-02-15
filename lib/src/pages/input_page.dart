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
String _date = '';
String _selectedPower = 'Fly';

List _powers = ['Fly', 'XRay', 'Telekinesis', 'Strength'];

TextEditingController _inputDateController = new TextEditingController();

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
          Divider(height: 40),
          _createDate(context),
          Divider(
            height: 40,
          ),
          _createDropdown(),
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
      obscureText: true,
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

  Widget _createDate(BuildContext inputContext) {
    return TextField(
      controller: _inputDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        hintText: '27/01/2004',
        labelText: 'Date of Birth',
        icon: Icon(Icons.date_range_outlined, color: iconsColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: iconsColor),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onTap: () {
        setState(() {
          FocusScope.of(inputContext).requestFocus(new FocusNode());
          _selectDate(inputContext);
        });
      },
    );
  }

  _selectDate(BuildContext inputContext) async {
    DateTime picked = await showDatePicker(
      context: inputContext,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      locale: Locale('en'),
    );

    if (picked != null) {
      setState(() {
        int _year = picked.year;
        int _month = picked.month;
        int _day = picked.day;

        _inputDateController.text = '$_year / $_month / $_day';
      });
    }
  }

  Widget _createDropdown() {
    return Row(
      children: [
        Icon(Icons.star_border_purple500_outlined, color: iconsColor),
        SizedBox(width: 20.0),
        DropdownButton(
          value: _selectedPower,
          items: _getDropdownOptions(),
          onChanged: (opt) {
            setState(() {
              _selectedPower = opt;
            });
          },
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> _getDropdownOptions() {
    List<DropdownMenuItem<String>> tempList = new List();

    _powers.forEach((power) {
      tempList.add(DropdownMenuItem(
        child: Text(power),
        value: power,
      ));
    });

    return tempList;
  }
}
