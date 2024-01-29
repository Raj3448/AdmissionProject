// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class AuthLoginRequested extends AuthEvent {
  UserDetailsDto userDetails;
  bool isLogin;
  final BuildContext context;

  AuthLoginRequested({
    required this.userDetails,
    required this.isLogin,
    required this.context,
  });
}

class AuthLogOutRequested extends AuthEvent {
  
}

class GetDataForHome extends AuthEvent {}
