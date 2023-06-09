import 'dart:developer';

import 'package:http/http.dart' as http;
import 'user_model.dart';

class ApiService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> model = userModelFromJson(response.body);
        return model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
