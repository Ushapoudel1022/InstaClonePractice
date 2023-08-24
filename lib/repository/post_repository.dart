import 'package:insta_app/model/post/post_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:developer';

abstract class PostRepository {
  Future<List<PostModel>> fetchPosts();
  Future<void> addPosts(PostModel postModel);
  Future<void> addLike(int id);
}

class PostRepositoryImpl implements PostRepository {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addPosts(PostModel postModel) async {
    try {
      var postCollection = firestore.collection("post");
      await postCollection.doc(postModel.id.toString()).set(postModel.toJson());
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<List<PostModel>> fetchPosts() async {
    try {
      var response = await firestore.collection("post").get().then((value) =>
          value.docs.map((e) => PostModel.fromJson(e.data())).toList());
      return response;
    } on FormatException catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> addLike(int id) async {
    firestore
        .collection("post")
        .doc(id.toString())
        .update({"likeCount": FieldValue.increment(1)});
  }
}
