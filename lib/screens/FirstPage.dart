// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_application_1/AuthScreen/Login.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package
import '../AuthScreen/SignUp.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

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
                height: 10,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
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

                    
                    print('Email: $email, Username: $username, Password: $password');

                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  }
                },
                child: const SizedBox(
                  width: 150,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
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
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  }
                },
                child: const SizedBox(
                  width: 150,
                  height: 50,
                  child: Center(
                    child:  Text(
                      'SignUp',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // InkWell for the "Contact Us" text
              InkWell(
                onTap: () {
                  // Open the URL when "Contact Us" is tapped
                  _launchURL('https://tssm.edu.in/ContactUs/20');
                },
                child: const Text(
                  "Contact Us",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to open a URL
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
