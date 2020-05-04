import 'package:flutter/material.dart';

import 'screens/news_list_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "News App -Based on HN API",
      darkTheme: ThemeData.dark(),
      home: NewsList(),
    );
  }
}
