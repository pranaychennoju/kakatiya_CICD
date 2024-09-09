// // // import 'dart:convert';

// // // String basicAuth = 'Basic ' + base64Encode(utf8.encode('$email:$password'));
// // import 'dart:convert';

// // import 'package:http/http.dart' as http;
// // import 'package:kakatiya/login_model.dart';
// // class ApiServices {
// //   Future<LoginResponceModel> login (LoginRequestModel requestModel)async {
// //     var url =  Uri.parse("https://164.52.194.161:8050/login");

// //     final response = await http.post(url, body: requestModel.toJson());
// //     if(response.statusCode ==  200 || response.statusCode == 400){
// //       return LoginResponceModel.fromJson(json.decode(response.body));
// //     }else {
// //       throw Exception('Failed to Login');
// //     }
// //   }
// // }

// import 'dart:convert';
// import 'package:http/http.dart' as http;

// void loginUser(String email, String password) async {
//   String authUsername = 'admin';
//   String authPassword = 'pass';
//   String url =
//       'https://164.52.194.161:8050/login'; // Replace with your login endpoint

//   String basicAuth =
//       'Basic ' + base64Encode(utf8.encode('$authUsername:$authPassword'));

//   Map<String, String> headers = {
//     'Authorization': basicAuth,
//     'Content-Type':
//         'application/json', // Assuming you're using JSON for the request
//   };

//   try {
//     final response = await http.post(
//       Uri.parse(url),
//       headers: headers,
//       body: jsonEncode(<String, String>{
//         'email_id': email,
//         'password': password,
//       }),
//     );

//     if (response.statusCode == 200) {
//       // Successful login
//       print('Response status: ${response.statusCode}');
//       print('Response body: ${response.body}');
//     } else {
//       // Unsuccessful login
//       print('Login failed');
//       print('Response status: ${response.statusCode}');
//       print('Response body: ${response.body}');
//     }
//   } catch (e) {
//     print('Error: $e');
//   }
// }
