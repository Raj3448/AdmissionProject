import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/user_details_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

part 'auth_event.dart';
part 'auth_state.dart';

String? _receivedUID;
late final imageUrl;



const int port = 8080;
const host = '192.168.0.177';
const Map<String, String> header = {
  'Content-type': 'application/json',
  'Accept': 'application/json',
};

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  String? get getUID {
    return _receivedUID;
  }
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginRequested>(
        (AuthLoginRequested event, Emitter<AuthState> emit) async {
      await _authLoginRequested(event);
    });

    on<AuthLogOutRequested>(
        (AuthLogOutRequested event, Emitter<AuthState> emit) async {
      await _authLogOutRequested(event);
    });

    on<GetDataForHome>((GetDataForHome event, Emitter<AuthState> emit) async {
      emit(AuthLoading());
      await _getDataForHome();
    });
  }
  Future<void> _authLoginRequested(AuthLoginRequested event) async {
    emit(AuthLoading());
    if (event.isLogin) {
      await signInWithEmailAndPassword(event.userDetails, event.context);
    } else {
      await createUserWithEmailAndPassword(event.userDetails, event.context);
    }
  }

  Future<void> _authLogOutRequested(AuthLogOutRequested event) async {
    try {
      if (_receivedUID != null) {
        await http
            .post(
                Uri(
                    scheme: 'http',
                    host: host,
                    port: port,
                    path: '/validation/log-out'),
                body: jsonEncode({"studentId": _receivedUID}),
                headers: header)
            .then((response) {
          if (response.statusCode == 200) {
            AuthSuccess(UID: _receivedUID!);
          }
        });
      }
    } catch (error) {
      emit(AuthFailure(error: 'Error during logout please retry'));
    }
    
  }

  Future<void> signInWithEmailAndPassword(
      UserDetailsDto userDetailsDto, BuildContext context) async {
    try {
      await http
          .post(
              Uri(
                  scheme: 'http',
                  host: host,
                  port: port,
                  path: '/validation/log-in'),
              body: jsonEncode({
                "phoneno": userDetailsDto.phoneno,
                "passcode": userDetailsDto.passcode
              }),
              headers: header)
          .then((response) {
        print("Reponse status : ${response.statusCode}");

        print("Response body : ${response.body}");
        final userResponse = jsonDecode(response.body);
        print(userResponse['response']);
        if (response.statusCode == 200) {
          _receivedUID = userResponse['studentId'];
          print("Reveived User Id : =====================>>>>> $_receivedUID");
          if (userResponse['response'] == '1') {
            emit(AuthSuccess(UID: userResponse['studentId']));
          }
          if (userResponse['response'] == '2') {
            emit(AuthFailure(error: 'Incorrect Password'));
          }
          if (userResponse['response'] == '3') {
            emit(AuthFailure(error: 'Account not registor'));
          }
          if (userResponse['response'] == '4') {
            emit(AuthFailure(error: 'Already Login'));
          }
          if (userResponse['response'] == '10') {
            emit(AuthFailure(error: 'Admin Login'));
          }
        }
      });
    } catch (error) {
      print(error);
    }
  }

  Future<void> createUserWithEmailAndPassword(
      UserDetailsDto userDetailsDto, BuildContext context) async {
    try {
      await http
          .post(
              Uri(
                  scheme: 'http',
                  host: host,
                  port: port,
                  path: '/validation/sign-up'),
              body: jsonEncode(userDetailsDto.toJson()),
              headers: header)
          .then((response) {
        print("Reponse status : ${response.statusCode}");

        print("Response body : ${response.body}");
        if (response.statusCode == 200) {
          final userResponse = jsonDecode(response.body);
          print(userResponse['response']);
          print(userResponse['studentId']);
          _receivedUID = userResponse['studentId'];
          if (userResponse['response'] == '1') {
            emit(AuthSuccess(UID: userResponse['studentId']));
          }
          if (userResponse['response'] == '2') {
            emit(AuthFailure(error: 'User already registor with phone no.'));
          }
        }
        if (response.statusCode == 1) {
          print(response.body.toString());

          print("Successfully");
        } else {
          AuthFailure(error: response.body.toString());
        }
      });
    } catch (e) {
      print("Auth Response$e");
      emit(AuthFailure(error: e.toString()));
    }
  }
  
  Future<void> _getDataForHome() async{
    try {
      if (_receivedUID != null) {
        await http
            .post(
                Uri(
                    scheme: 'http',
                    host: host,
                    port: port,
                    path: '/validation/home-page'),
                body: jsonEncode({"studentId": _receivedUID}),
                headers: header)
            .then((response) {
          if (response.statusCode == 200) {
            final userResponse = jsonDecode(response.body);
            HomeSuccessData(userDetailsDto: UserDetailsDto.fromJson(userResponse['response']));
          }
        });
      }
    } catch (error) {
      emit(AuthFailure(error: 'Error during logout please retry'));
    }
  }
}
