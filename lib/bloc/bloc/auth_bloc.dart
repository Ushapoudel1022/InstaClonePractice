import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:insta_app/repository/Database/local_database.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthSignUpRequested>(_signup);
    on<AuthSignUpWithGoogleRequested>(_signupwithgoogle);
  }

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  // GoogleSignIn _googleSignIn = GoogleSignIn(
  //   scopes: scopes,
  // );
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final AppSharedPreferences _sharedPreferences = AppSharedPreferences();

  Future<void> _signup(AuthSignUpRequested event, Emitter emit) async {
    // log("Hello");
    print("Hello");

    emit(AuthLoading());
    UserCredential response =
        await _firebaseAuth.createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
    if (response.user?.uid != null) {
      await _sharedPreferences.saveUserData(
        email: response.user?.email ?? '',
        id: response.user?.uid ?? '',
      );
      // final userdata = await _sharedPreferences.getUserData();
      // log(userdata[0]);
      emit(AuthSucess(email: ""));
    }
  }

  Future<void> _signupwithgoogle(
      AuthSignUpWithGoogleRequested event, Emitter emit) async {
    emit(AuthLoading());
    try {
      final response = await _firebaseAuth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);

      if (response.user?.uid != null) {
        await _sharedPreferences.saveUserData(
          email: response.user?.email ?? '',
          id: response.user?.uid ?? '',
        );
      }
    } catch (e) {
      emit(AuthFailure(error: "signup Failed $e"));
    }
  }

  // final response =
  //     await _firebaseAuth.createUserWithEmailAndPassword(
  //   email: emailController.text,
  //   password: passwordController.text,
  // );
  // if (response.user?.uid != null) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     const SnackBar(
  //       content: Text("Signup Sucess"),
  //     ),
  //   );
  // }
}
