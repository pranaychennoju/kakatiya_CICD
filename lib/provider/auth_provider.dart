import 'dart:convert';
import 'dart:ffi';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:kakatiya/login_model.dart';

class AuthProvider extends ChangeNotifier {
  // String? email;
  // String? password;
  bool _loading = false;
  bool get loading => _loading;
  bool isBack = false;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  Future<void> login(String email, String password) async {
    String authEmail = 'admin';
    String authPassword = 'pass';
    String url = 'https://164.52.194.161:8050/login';

    String basicAuth =
        'Basic ${base64Encode(utf8.encode('$authEmail:$authPassword'))}';
    LoginRequestModel loginRequest =
        LoginRequestModel(email: email, password: password);

    Map<String, String> headers = {
      'Authorization': basicAuth,
      'Content-Type':
          'application/json', // Assuming you're using JSON for the request
    };
    try {
      final response = await http.post(Uri.parse(url),
          headers: headers, body: jsonEncode(loginRequest.toJson())
          // jsonEncode(<String, String>{
          //   'email_id': email,
          //   'password': password,
          // }),
          );

      if (response.statusCode == 200) {
        // Successful login

        setLoading(false);
        isBack = true;
        var data = jsonDecode(response.body.toString());
        print(data);
        print('Response status: ${response.statusCode}');
        notifyListeners();
        // print('Response body: ${response.body}');
      } else {
        // Unsuccessful login
        setLoading(false);
        isBack = false;
        print('Response status: ${response.statusCode}');
        print('Response body: ${response.body}');
        notifyListeners();
      }
    } catch (e) {
      setLoading(false);

      print('Error: $e');
    }
  }

  // void setAuthCredentials(String email, String password){
  //   this.email = email;
  //   this.password = password;
  //   notifyListeners();
  // }
  // Future<void> userLogout (){

  // }
}
