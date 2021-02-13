// Third Party
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    loadData();
  }

  Future<List<dynamic>> loadData() async {
    final r = await rootBundle.loadString('data/menu_opts.json');

    Map datamap = jsonDecode(r);
    options = datamap['routes'];

    return options;
  }
}

final menuProvider = new _MenuProvider();
