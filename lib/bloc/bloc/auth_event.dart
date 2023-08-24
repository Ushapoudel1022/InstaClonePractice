part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class AuthSignUpRequested extends AuthEvent {}

class AuthSignUpWithGoogleRequested extends AuthEvent {}
