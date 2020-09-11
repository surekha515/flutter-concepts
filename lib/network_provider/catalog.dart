import 'dart:convert';

import 'package:flutter/services.dart';

class CatalogProvider {
  Future<dynamic> getDataFromJson() async {
    final String response = await rootBundle
        .loadString('assets/data/list_of_items.json'); // getting data from json

    print(response);

    final dynamic jsonResult = json.decode(response);// decoding the response

    print(jsonResult);

    return jsonResult; // returning list of objects
  }
}
