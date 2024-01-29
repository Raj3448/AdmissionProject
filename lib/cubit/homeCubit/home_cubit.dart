import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/model/user_details_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:http/http.dart' as http;

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  int port = 8080;
  final host = '192.168.0.177';
  Map<String, String> header = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };
  HomeCubit() : super(HomeInitial());

  Future<dynamic> GetHomeData(String _receivedUID) async {
    try {
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
          print('Home Received data :  ${userResponse['response']}');
          var jsondata = jsonDecode(userResponse['response']);
          print("Runtime Type Received Object : ${jsondata.runtimeType} ");
          UserDetailsDto jsondata1 =
              UserDetailsDto.fromJson(userResponse['response']);
          print("First Name ==>${jsondata1.firstname}");
          print("Last Name ==>${jsondata1.lastname}");
          print(jsondata1.mail);
          print(jsondata1.phoneno);
          return UserDetailsDto.fromJson(jsondata);
        }
      });
    } catch (error) {
      emit(HomeFailure(error: 'Error during getting data for home'));
    }
    return null;
  }
}
