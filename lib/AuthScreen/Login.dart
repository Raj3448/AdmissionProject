
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/AuthScreen/Password.dart';
import 'package:flutter_application_1/screens/personal.dart'; // Import the ForgotPassword file

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 232, 247),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                width: double.maxFinite,
              ),
              const Padding(padding: EdgeInsets.all(20)),
              Image.asset(
                'lib/assets/images/TSSMLOGO_1-removebg.png',
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome To",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "TSSM's",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Username TextField with validator
              SizedBox(
                height: 50,
                width: 300,
                child: TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a username';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Password TextField with validator
              SizedBox(
                height: 50,
                width: 300,
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true, // Hide the password text
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty || value.length < 6) {
                      return 'Please enter a valid password (at least 6 characters)';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // InkWell for the "Forgot Password" text
              InkWell(
                onTap: () {
                  // Navigate to the ForgotPassword screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Password()),
                  );
                },
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                onPressed: () {
                  
                  if (_formKey.currentState?.validate() ?? false) {
                    
                    final email = _emailController.text;
                    final username = _usernameController.text;
                    final password = _passwordController.text;

                    
                    print('Email: $email, Username: $username, Password: $password');


                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Personal()),
                    );
                  }
                },
                child: const Text(
                  '   Login   ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
