import 'dart:async';

import 'package:http/http.dart' as http;

class LoginUser {
  static Future<String?> login({
    required String email,
    required String password,
  }) async {
    try {
      var url = Uri.parse('http://192.168.188.183:4000/login');

      var response = await http
          .post(url, body: {'e_mail': email, 'password': password}).timeout(
              const Duration(seconds: 10), onTimeout: () {
        throw TimeoutException('Check Internet Connection');
      });
      if (response.statusCode == 200) {
        return response.body;
      } else {
        // print(response.body);
      }
    } catch (e) {
      // print(e);
    }
    return null;
  }
}
