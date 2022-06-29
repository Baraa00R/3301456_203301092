// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:exchanging_app/HomePage.dart';
import 'package:exchanging_app/LoginPage.dart';
import 'package:exchanging_app/favorite.dart';
import 'package:exchanging_app/main.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              ElevatedButton(
                onPressed: () => LoginPage(),
                child: Text('data'),
              );
              Container(
                padding: EdgeInsets.all(20),
                child: Text('infoo'),
              );
            },
            icon: Icon(
              Icons.info,
            ),
          ),
        ],
        title: Text('infopage'),
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 31, 132, 226),
            child: Column(
              children: [
                SizedBox(
                  width: 10,
                  height: 30  ,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'coinType',
                          style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        Text(
                          'label',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  height: 22,
                  color: Color.fromARGB(255, 0, 1, 2),
                ),
                Row(
                  children: [
                    Text(
                      'buyPrice',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      width: 250,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      color: Color.fromARGB(77, 58, 54, 52),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              BorderRadius.circular(10);
                            },
                            child: Text('Veri'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Analiz'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: GNav(
        padding: EdgeInsets.all(15),
        backgroundColor: Colors.black,
        tabBackgroundColor: Colors.white,
        activeColor: Colors.grey,
        color: Colors.white,
        tabs: [
          GButton(
            gap: 5,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => exchange()),
              );
            },
            icon: Icons.home,
          ),
          GButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => favoritepage()),
              );
            },
            icon: Icons.favorite_border,
          ),
          GButton(
            icon: Icons.search,
          ),
          GButton(
            icon: Icons.settings,
          ),
        ],
      ),
    );
  }
}
