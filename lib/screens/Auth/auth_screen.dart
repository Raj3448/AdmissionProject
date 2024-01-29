import 'package:flutter/material.dart';
import 'package:flutter_application_1/Bloc/AuthBloc/auth_bloc.dart';
import 'package:flutter_application_1/screens/Home/homePage.dart';
import 'package:flutter_application_1/screens/personal.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/user_details_dto.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({super.key});
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode firstNameFocusNode = FocusNode();
  final FocusNode lastNameFocusNode = FocusNode();

  final FocusNode chooseQuesFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();

  final FocusNode ageFocusNode = FocusNode();
  final FocusNode addressNode = FocusNode();

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  static String? _receivedUID;

  final _formKey = GlobalKey<FormState>();
  bool _isObscured = true;
  String? mail;
  String? password;
  String? firstName = '';
  String? lastName = '';
  String? phoneNo = '';
  String? gender = '';
  String qid = "";
  String answer = "";
  String age = '';
  String address = '';

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  bool _isLogin = true;
  bool _isLoading = false;
  String? question;

  final _genderController = TextEditingController();

  Future<void> _submit(BuildContext context) async {
    if (!(_globalKey.currentState!.validate())) {
      return;
    }

    setState(() {
      _isLoading = true;
    });
    FocusScope.of(context).unfocus();
    _globalKey.currentState!.save();

  

    context.read<AuthBloc>().add(AuthLoginRequested(
        userDetails: UserDetailsDto(
            mail: mail ?? '',
            passcode: password ?? '',
            firstname: firstName ?? '',
            lastname: lastName ?? '',
            phoneno: phoneNo ?? '',
            gender: gender ?? '',
            age: age,
            qid: qid,
            answer: answer,
            address: address),
        context: context,
        isLogin: _isLogin));

    setState(() {
      _isLoading = false;
      _genderController.clear();
    });

  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 232, 247),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailure) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.error),
              duration: const Duration(seconds: 3),
            ));
          }
          if (state is AuthSuccess) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const Personal()),
                (route) => false);
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: GestureDetector(
                  onTap: () {
                    // onTapFunction(authWidget.getFocus1, authWidget.getFocus2,
                    //     authWidget.getFocus3);
                  },
                  child: Column(children: [
                    Form(
                        key: _formKey,
                        child: Column(children: [
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
                          SizedBox(
                            height: _isLogin ? 60 : 10,
                          ),
                          Form(
                              key: _globalKey,
                              child: Column(
                                children: [
                                  if (!_isLogin)
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      child: TextFormField(
                                        key: const ValueKey('first name'),
                                        focusNode: widget.firstNameFocusNode,
                                        textInputAction: TextInputAction.next,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter first name';
                                          }
                                          return null;
                                        },
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        decoration: const InputDecoration(
                                          label: Text(
                                            'First Name',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueGrey),
                                          ),
                                          labelStyle:
                                              TextStyle(color: Colors.black),
                                        ),
                                        onSaved: (value) {
                                          firstName = value;
                                        },
                                      ),
                                    ),
                                  if (!_isLogin)
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      child: TextFormField(
                                        key: const ValueKey('Last Name'),
                                        focusNode: widget.lastNameFocusNode,
                                        textInputAction: TextInputAction.next,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter last name';
                                          }
                                          return null;
                                        },
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        decoration: const InputDecoration(
                                          label: Text(
                                            'Last Name',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueGrey),
                                          ),
                                          labelStyle:
                                              TextStyle(color: Colors.black),
                                        ),
                                        onSaved: (value) {
                                          lastName = value;
                                        },
                                      ),
                                    ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: TextFormField(
                                      key: const ValueKey('PhoneNo'),
                                      focusNode: widget.phoneFocusNode,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter phone No';
                                        }
                                        if (value.length != 10) {
                                          return 'Please enter valid phone No';
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.next,
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 18),
                                      decoration: const InputDecoration(
                                        label: Text(
                                          'Phone No.',
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueGrey),
                                        ),
                                        labelStyle:
                                            TextStyle(color: Colors.black),
                                      ),
                                      onSaved: (value) {
                                        phoneNo = value;
                                      },
                                    ),
                                  ),
                                  if (!_isLogin)
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      child: TextFormField(
                                        key: const ValueKey('age'),
                                        focusNode: widget.ageFocusNode,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter age';
                                          }
                                          return null;
                                        },
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.next,
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        decoration: const InputDecoration(
                                          label: Text(
                                            'Age',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueGrey),
                                          ),
                                          labelStyle:
                                              TextStyle(color: Colors.black),
                                        ),
                                        onSaved: (value) {
                                          age = value!;
                                        },
                                      ),
                                    ),
                                  if (!_isLogin)
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      child: TextFormField(
                                        key: const ValueKey('address'),
                                        focusNode: widget.addressNode,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please Enter Address';
                                          }

                                          return null;
                                        },
                                        textInputAction: TextInputAction.next,
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        decoration: const InputDecoration(
                                          label: Text(
                                            'Address',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueGrey),
                                          ),
                                          labelStyle:
                                              TextStyle(color: Colors.black),
                                        ),
                                        onSaved: (value) {
                                          address = value!;
                                        },
                                      ),
                                    ),
                                  if (!_isLogin)
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      child: TextFormField(
                                        key: const ValueKey('mail'),
                                        focusNode: widget.emailFocusNode,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter mail';
                                          }
                                          if (!value.contains('@')) {
                                            return 'Invalid mail';
                                          }
                                          return null;
                                        },
                                        textInputAction: TextInputAction.next,
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        decoration: const InputDecoration(
                                          label: Text(
                                            'Email',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueGrey),
                                          ),
                                          labelStyle:
                                              TextStyle(color: Colors.black),
                                        ),
                                        onSaved: (value) {
                                          mail = value;
                                        },
                                      ),
                                    ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: TextFormField(
                                      key: const ValueKey('password'),
                                      focusNode: widget.passwordFocusNode,
                                      textInputAction: TextInputAction.done,
                                      obscureText: _isObscured,
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 18),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter password';
                                        }
                                        if (value.length < 7) {
                                          return 'Please enter a valid password with at least 7 characters';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        ),
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueGrey),
                                        ),
                                        labelText: 'Password',
                                        labelStyle: const TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        focusColor: Colors.white,
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _isObscured = !_isObscured;
                                            });
                                          },
                                          icon: Icon(
                                            _isObscured
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                          ),
                                        ),
                                      ),
                                      onSaved: (value) {
                                        password = value;
                                      },
                                    ),
                                  ),
                                  if (!_isLogin)
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0, vertical: 10),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.4,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              child: DropdownButton(
                                                  alignment: Alignment.center,
                                                  underline: const Text(
                                                    'Select Gender',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20),
                                                  ),
                                                  items: const [
                                                    DropdownMenuItem(
                                                      value: 'Male',
                                                      child: Text('Male'),
                                                    ),
                                                    DropdownMenuItem(
                                                      value: 'Female',
                                                      child: Text('Female'),
                                                    ),
                                                    DropdownMenuItem(
                                                      value: 'Other',
                                                      child: Text('Other'),
                                                    )
                                                  ],
                                                  onChanged: (identifier) {
                                                    gender = identifier;
                                                    _genderController.clear();
                                                    setState(() {
                                                      _genderController.text =
                                                          identifier!;
                                                    });
                                                  }),
                                            ),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.42,
                                            child: TextFormField(
                                              controller: _genderController,
                                              key: const ValueKey('gender'),
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Please select gender';
                                                }
                                                return null;
                                              },
                                              readOnly: true,
                                              textInputAction:
                                                  TextInputAction.next,
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18),
                                              decoration: const InputDecoration(
                                                label: Text(
                                                  '',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white),
                                                ),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.blueGrey),
                                                ),
                                              ),
                                              onSaved: (value) {
                                                gender = value;
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  if (!_isLogin)
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0, vertical: 10),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.42,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              child: DropdownButton(
                                                  alignment: Alignment.center,
                                                  underline: Text(
                                                    question == null
                                                        ? 'Choose Question'
                                                        : question!,
                                                    style: const TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20),
                                                  ),
                                                  items: const [
                                                    DropdownMenuItem(
                                                      value: 'PetName',
                                                      child: Text(
                                                          'Enter Pet Name'),
                                                    ),
                                                    DropdownMenuItem(
                                                      value: 'FavColor',
                                                      child: Text(
                                                          'Enter Favorite Color'),
                                                    )
                                                  ],
                                                  onChanged: (identifier) {
                                                    if (identifier ==
                                                        'PetName') {
                                                      qid = '0';
                                                    } else {
                                                      qid = '1';
                                                    }
                                                    setState(() {
                                                      question = identifier;
                                                    });
                                                  }),
                                            ),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.4,
                                            child: TextFormField(
                                              key: const ValueKey('chooseQues'),
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Please fill answer';
                                                }
                                                return null;
                                              },
                                              textInputAction:
                                                  TextInputAction.next,
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18),
                                              decoration: const InputDecoration(
                                                label: Text(
                                                  '',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white),
                                                ),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.blueGrey),
                                                ),
                                              ),
                                              onSaved: (value) {
                                                answer = value!;
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                ],
                              )),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                    const Size(250, 50),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(
                                          0xff334155)) // Set the size here
                                  ),
                              onPressed: _isLoading
                                  ? null
                                  : () async {
                                      await _submit(context);
                                    },
                              child: _isLoading
                                  ? const Center(
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Colors.blue),
                                        strokeWidth: 5.0,
                                        backgroundColor: Colors.grey,
                                      ),
                                    )
                                  : Text(
                                      _isLogin ? 'Log In' : 'Create Account',
                                      style:
                                          const TextStyle(color: Colors.black),
                                    )),
                          const SizedBox(
                            height: 20,
                          ),
                          // if (!_isLogin)

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                _isLogin
                                    ? 'Don\'t have account?'
                                    : 'Already have an account?',
                                style: const TextStyle(color: Colors.black),
                              ),
                              TextButton(
                                  onPressed: () {
                                    setState(() {
                                      _isLogin = !_isLogin;
                                    });
                                  },
                                  child: Text(
                                    _isLogin ? 'Create Now' : 'Login',
                                    style: const TextStyle(color: Colors.black),
                                  ))
                            ],
                          )
                        ]))
                  ])));
        },
      ),
    );
  }

  void onTapFunction(
      FocusNode focusNode1, FocusNode focusNode2, FocusNode focusNode3) {
    if (focusNode1.hasFocus) {
      focusNode1.unfocus();
    }

    if (focusNode2.hasFocus) {
      focusNode2.unfocus();
    }

    if (focusNode3.hasFocus) {
      focusNode3.unfocus();
    }
  }
}
