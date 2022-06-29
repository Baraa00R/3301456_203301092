// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 151, 161, 169),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              GestureDetector(
                onTap: (() async {
                  var uri = 'https://mail.google.com/mail/u/0/#inbox?compose=new';

                  if (await canLaunchUrl(Uri.parse(uri))) {
                    await launchUrl(Uri.parse(uri));
                  } else {
                    throw 'Could not launch $uri';
                  }
                }),
                child: Card(
                  child: ListTile(
                    title: Text('baraarahmon1233@gmail.com'),
                    leading: Icon(Icons.email),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Card(
                  child: ListTile(
                    title: Text('+905313881003'),
                    leading: Icon(Icons.phone),
                  ),
                ),
              ),
              GestureDetector(
                onTap : () {},
                child: Card(
                  child: ListTile(
                    title: Text('05313881003'),
                    leading: Icon(Icons.whatsapp),

                  ),
                ),
              ),
              
            ],
          ),
          
        ),
      ),
    );
  }
}
