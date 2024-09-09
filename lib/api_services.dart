// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:kakatiya/login_model.dart';
// class ApiServices {
//   Future<LoginResponceModel?> login (LoginRequestModel requestModel)async {
//      String authEmail = 'admin';
//     String authPassword = 'pass';
//      String url = 'https://164.52.194.161:8050/login';

//       String basicAuth =
//       'Basic ' + base64Encode(utf8.encode('$authEmail:$authPassword'));

//   Map<String, String> headers = {
//     'Authorization': basicAuth,
//     'Content-Type': 'application/json', // Assuming you're using JSON for the request
//   };


//   try {
//     final response = await http.post(
//       Uri.parse(url),
//       headers: headers,
//       body: requestModel.toJson()
//     );

//     if (response.statusCode == 200) {
//       // Successful login
//      print('Response status: ${response.statusCode}');
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
//   // return LoginResponceModel();

  
 
//     // final response = await http.post(url, body: requestModel.toJson());
//     // if(response.statusCode ==  200 || response.statusCode == 400){
//     //   return LoginResponceModel.fromJson(json.decode(response.body));
//     // }else {
//     //   throw Exception('Failed to Login');
//     // }
//   }
// }