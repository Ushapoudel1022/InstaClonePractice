part of 'insta_bloc.dart';

// @immutable
abstract class InstaState {}

class InstaInitial extends InstaState {}

class InstaLoaded extends InstaState {}

class InstaFinal extends InstaState {
  final List<UserPost> userInstaData;
  InstaFinal({
    required this.userInstaData,
  });
}

// class InstaState {
//   final List<UserPost> ? userPostList;

//   InstaState({this.userPostList});
// }
