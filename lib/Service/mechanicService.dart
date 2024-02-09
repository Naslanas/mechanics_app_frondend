import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mechanics_app/Model/mechanicModel.dart';
class MechanicApiService {
  Future<List<Mechanic>> getMechanic() async {
    var client = http.Client();
    var apiUrl = Uri.parse("http://localhost:3001/api/mechanic/view");
    var response = await client.get(apiUrl);
    if (response.statusCode == 200) {
      return mechanicFromJson(response.body);
    }
    else {
      return [];
    }
  }
}

