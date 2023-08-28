part of 'auth_bloc.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSucess extends AuthState {
  String email;
  AuthSucess({
    required this.email,
  });
}

class AuthFailure extends AuthState {
  String error;
  AuthFailure({
    required this.error,
  });
}
