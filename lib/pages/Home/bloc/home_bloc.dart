// import 'dart:math';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
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
        var resultImage =
            await imagePicker.pickImage(source: ImageSource.gallery);
        if (resultImage != null) {
          var imageUploadedPath = await postRepository.uploadMedia(
            imageFile: File(resultImage.path),
            fileName: "myImage${DateTime.now().millisecondsSinceEpoch}",
          );
          PostModel postModel = PostModel(
              id: 1,
              name: "usha",
              location: "pharping",
              description: "This is first description",
              likecount: 1,
              isliked: true,
              imagePath: imageUploadedPath);
          await postRepository.addPosts(postModel);
          add(HomeDataRequested());
          // "https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Y2Fyc3xlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80");
        }
      } catch (e) {
        log(e.toString());
        emit(
          HomeFailure(error: e.toString()),
        );
      }
    });
    on<HomeDataRequested>((event, emit) async {
      emit(HomeLoading());
      try {
        var response = await postRepository.fetchPosts();
        emit(HomeLoaded(posts: response));
      } catch (e) {
        log(e.toString());
        emit(
          HomeFailure(error: e.toString()),
        );
      }
    });

    on<HomePostLikedRequested>((event, emit) async {
      emit(HomeLoading());
      try {
        await postRepository.addLike(event.id);
        add(HomeDataRequested());
      } catch (e) {
        log(e.toString());
      }
    });
  }
  PostRepository postRepository = PostRepositoryImpl();
  ImagePicker imagePicker = ImagePicker();
}
