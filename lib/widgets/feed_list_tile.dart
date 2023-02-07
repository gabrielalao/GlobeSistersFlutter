import 'package:flutter/material.dart';

import 'package:globesisters/core/model/feed_model.dart';

class FeedListTile extends StatelessWidget {
  final FeedModel feed;
  const FeedListTile({Key? key, required this.feed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 200,
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: DecorationImage(
            image: NetworkImage(feed.image),
            fit: BoxFit.cover,
          ),
          border: Border.all(width: 3, color: const Color.fromARGB(255, 216, 227, 241)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      const SizedBox(height: 3),
      Text(
        feed.title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
      ),
      const SizedBox(height: 8)
    ]);
  }
}
