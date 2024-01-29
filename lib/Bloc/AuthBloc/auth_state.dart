part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthSuccess extends AuthState {
  final String UID;

  AuthSuccess({required this.UID});
}

final class AuthFailure extends AuthState {
  final String error;

  AuthFailure({required this.error});
}

final class HomeSuccessData extends AuthState {
  UserDetailsDto userDetailsDto;
  HomeSuccessData({required this.userDetailsDto});
}

final class AuthLoading extends AuthState {}
