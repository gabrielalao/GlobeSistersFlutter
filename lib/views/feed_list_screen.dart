import 'package:flutter/material.dart';

import 'package:globesisters/core/model/feed_model.dart';
import 'package:globesisters/widgets/feed_list_tile.dart';

/// Displays a list of feeds.
class FeedListScreen extends StatelessWidget {
  const FeedListScreen({
    super.key,
  });

  final List<FeedModel> feeds = const <FeedModel>[
    FeedModel(
        title: 'Liked by craig_love and 44,686 others',
        image: 'https://source.unsplash.com/random/?people&1'),
    FeedModel(
        title: 'Viewed by globesisters and 13,584 others',
        image: 'https://source.unsplash.com/random/?people&2'),
    FeedModel(
        title: 'Posted by flutter_dev and 14,686 others',
        image: 'https://source.unsplash.com/random/?people&3'),
    FeedModel(
        title: 'Deleted by top_dev and 1,686 others',
        image: 'https://source.unsplash.com/random/?people&4'),
    FeedModel(
        title: 'Updated by travel_love and 186 others',
        image: 'https://source.unsplash.com/random/?people&5'),
    FeedModel(
        title: 'Followed by fan_club and 14,686 others',
        image: 'https://source.unsplash.com/random/?people&6'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      restorationId: 'feedListView',
      itemCount: feeds.length,
      itemBuilder: (BuildContext context, int index) {
        return FeedListTile(feed: feeds[index]);
      },
    );
  }
}
