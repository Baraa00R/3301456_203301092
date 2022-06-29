import 'package:flutter/material.dart';

class favoritepage extends StatelessWidget {
  const favoritepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('favorites'),
      ),
    ));
  }
}
