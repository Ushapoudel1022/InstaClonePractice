// import 'dart:math';
// import 'dart:developer';

import 'dart:developer';

import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

part 'insta_event.dart';
part 'insta_state.dart';

class InstaBloc extends Bloc<InstaEvent, InstaState> {
  InstaBloc() : super(InstaInitial()) {
    on<InstaPostRequested>((event, emit) async {
      emit(InstaInitial());
      log("Called");
      await Future.delayed(
        const Duration(seconds: 2),
      );
      log("completed");
      final userInstaData = List.generate(
        2,
        (index) => UserModel(name: "name$index", email: "email$index"),
      );
      // emit(InstaLoaded());
      emit(
        InstaFinal(
          userInstaData: userInstaData,
        ),
      );
    });
  }
}

class UserModel {
  final String name;
  final String email;

  UserModel({required this.name, required this.email});
}
