part of 'home_bloc.dart';

abstract class HomeEvent {}

class HomeDataRequested extends HomeEvent {}

class HomeAddPostRequested extends HomeEvent {}

class HomePostLikedRequested extends HomeEvent {
  int id;
  HomePostLikedRequested({
    required this.id,
  });
}
