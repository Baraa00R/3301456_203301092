import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class test1 extends StatelessWidget {
  const test1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Link(
          uri: Uri.parse('https://www.youtube.com/watch?v=cSR34CNXLvo'),
          builder: (context, followlink) =>
              ElevatedButton(onPressed: () {}, child: Text('data'), )),
    );
  }
}
