part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeSuccess extends HomeState {
  UserDetailsDto userDetailsDto;
  HomeSuccess({required this.userDetailsDto});
}

final class HomeLoading extends HomeState {}

final class HomeFailure extends HomeState {
  String error;
  HomeFailure({required this.error});
}
