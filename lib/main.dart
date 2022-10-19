import 'package:flutter/material.dart';

import 'pages/homepage.dart';

void main() {
  runApp(GameStore());
}

class GameStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
