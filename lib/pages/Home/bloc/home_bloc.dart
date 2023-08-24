// import 'dart:math';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../model/post/post_model.dart';
import '../../../repository/post_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeAddPostRequested>((event, emit) async {
      emit(HomeLoading());
      try {
        PostModel postModel = PostModel(
            id: 1,
            name: "usha",
            location: "pharping",
            description: "This is first description",
            likecount: 1,
            isliked: true);
        await postRepository.addPosts(postModel);
        add(HomeDataRequested());
      } catch (e) {
        log(e.toString());
        emit(
          HomeFailure(error: e.toString()),
        );
      }
    });
    on<HomeDataRequested>((event, emit) async {
      emit(HomeLoading());
      var response = await postRepository.fetchPosts();
      emit(HomeLoaded(posts: response));
    });
  }
  PostRepository postRepository = PostRepositoryImpl();
}
