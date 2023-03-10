import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:globesisters/core/state_management/post_provider.dart';
import 'package:globesisters/widgets/post_list_tile.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final TextEditingController titleCtlr = TextEditingController();
  bool bAddBtn = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<PostProvider>(builder: (context, postProvider, child) {
      return Container(
          padding: const EdgeInsets.all(12),
          color: Colors.white.withOpacity(0.9),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: titleCtlr,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(16),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: const TextStyle(color: Colors.grey),
                          hintText: "Please input post title...",
                          fillColor: Colors.grey[200]),
                      onChanged: (title) {
                        setState(() {
                          if (title == '') {
                            bAddBtn = false;
                          } else {
                            bAddBtn = true;
                          }
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // background
                      foregroundColor: Colors.white, // foreground
                    ),                    
                    onPressed: !bAddBtn ? null : () {
                      Provider.of<PostProvider>(context, listen: false)
                          .addNewPost(titleCtlr.text);
                      titleCtlr.clear();
                      setState(() {
                        bAddBtn = false;
                      });
                    },
                    child: const Text('Post'),
                  )
                ]),
            Expanded(
                child: postProvider.isEmpty()
                    ? const Center(
                        child: Text("Empty posts, Please add new post..."))
                    : ListView.builder(
                        restorationId: 'postListView',
                        itemCount: postProvider.posts.length,
                        itemBuilder: (BuildContext context, int index) {
                          return PostListTile(post: postProvider.posts[index]);
                        },
                      ))
          ]));
    });
  }
}
