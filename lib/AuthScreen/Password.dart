import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/AuthScreen/Login.dart'; // Import the ForgotPassword file

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
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
                "    TSSM's",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Email TextField with validator
              SizedBox(
                height: 50,
                width: 300,
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return 'Please enter a valid email address';
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
                    labelText: 'New Password',
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
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                onPressed: () {
                  // Validate the form before navigating
                  if (_formKey.currentState?.validate() ?? false) {
                    // Access entered values using controllers
                    final email = _emailController.text;
                    final username = _usernameController.text;
                    final password = _passwordController.text;

                    // TODO: Perform login or navigate to next screen (FirstPage)
                    // For now, just print the entered values
                    print('Email: $email, Username: $username, Password: $password');

                    // Navigate to the FirstPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  }
                },
                child: const Text(
                  'Update',
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
