import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:globesisters/views/app.dart';
import 'package:globesisters/core/state_management/post_provider.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PostProvider()),
      ],
      child: MyApp(),
    ),
  );
}
