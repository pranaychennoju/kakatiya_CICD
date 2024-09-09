import 'package:flutter/material.dart';
import 'package:kakatiya/dashboard.dart';
import 'package:kakatiya/login_model.dart';
import 'package:kakatiya/provider/auth_provider.dart';
import 'package:kakatiya/utils/utils.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController(text: 'ongole@ccms.tessch');
  final _passwordController = TextEditingController(text: 'ongole');
  LoginRequestModel requestModel = LoginRequestModel();
  // AuthProvider authProvider = AuthProvider();
  String? _validateEmail(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your email';
    }
    if (!RegExp(r'^[\w-]+@([\w-]+\.)+[\w-]{2,}$').hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    requestModel = new LoginRequestModel();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
        body: Stack(
      children: [
        Container(color: const Color(0xFFF2F2F5)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Container(
            // color: Colors.white,
            decoration: BoxDecoration(
                // color: Color.fromARGB(255, 93, 194, 231),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    // spreadRadius: 0.2,
                    blurRadius: 9,
                    // offset: const Offset(9, 9),
                  )
                ],
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                )),
            child: Form(
              key: _formkey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Column(
                        children: [
                          Text(
                            'Welcome',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sign In to ',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54),
                              ),
                              Text(
                                'Start your section',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.alternate_email),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                // borderSide: BorderSide.none
                              ),
                              hintText: 'Email Address',
                              labelStyle: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onSaved: (input) => requestModel.email = input!,
                            validator: _validateEmail,
                          ),
                          const SizedBox(height: 12.0),
                          TextFormField(
                            controller: _passwordController,
                            obscureText: true,
                            onSaved: (input) => requestModel.password = input!,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                // borderSide: BorderSide.none
                              ),
                              hintText: 'Enter your password',
                              labelStyle: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            validator: _validatePassword,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 9, 20, 225))),
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              loginUser();
                              setState(() {});
                            } else {}
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(18),
                              child: authProvider.loading
                                  ? CircularProgressIndicator()
                                  : Text(
                                      'Login',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }

  loginUser() {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    // final authProvider = Provider.of<AuthProvider>(context);

    final authResult = authProvider.login(
        _emailController.text.trim(), _passwordController.text.trim());
    if (authProvider.isBack) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DashboardScreen(),
          ));
    } else {}
  }
}



// ongole@ccms.tech
// ongole