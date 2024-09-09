class ResponseModel {
  final bool success;
  final String message;
  ResponseModel({required this.success, required this.message});
}

class LoginRequestModel {
  String? email;
  String? password;

  LoginRequestModel({this.email, this.password});

  Map<String, dynamic> toJson() {
    return {
      'email_id': email,
      'password': password,
    };
  }
}
