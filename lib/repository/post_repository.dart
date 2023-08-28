import 'package:insta_app/model/post/post_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:developer';
import 'dart:io';

abstract class PostRepository {
  Future<List<PostModel>> fetchPosts();
  Future<void> addPosts(PostModel postModel);
  Future<void> addLike(int id);
  Future<String> uploadMedia(
      {required File imageFile, required String fileName});
}

class PostRepositoryImpl implements PostRepository {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseStorage firebaseStorage = FirebaseStorage.instance;

  @override
  Future<void> addPosts(PostModel postModel) async {
    try {
      log("posted");
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

  @override
  Future<String> uploadMedia(
      {required File imageFile, required String fileName}) async {
    final Reference reference = firebaseStorage.ref().child("media/$fileName");
    UploadTask uploadTask = reference.putFile(imageFile);
    final downloadUrl = (await uploadTask);
    var finalImageUrl = await downloadUrl.ref.getDownloadURL();
    return finalImageUrl;
  }
}
