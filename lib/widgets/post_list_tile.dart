import 'package:flutter/material.dart';

import 'package:globesisters/core/model/post_model.dart';

class PostListTile extends StatelessWidget {
  final PostModel post;
  const PostListTile({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(post.title),
        leading: const CircleAvatar(
            // Display the Flutter Logo image asset.
            foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
        onTap: () {});
  }
}
