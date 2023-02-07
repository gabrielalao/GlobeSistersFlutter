import 'package:flutter/material.dart';
import 'package:globesisters/core/model/post_model.dart';

class PostProvider extends ChangeNotifier {
  final List<PostModel> posts = [];

  bool isEmpty() {
    return posts.isEmpty;
  }

  void addNewPost(String title) {
    posts.add(PostModel(title));
    notifyListeners();
  }
}
