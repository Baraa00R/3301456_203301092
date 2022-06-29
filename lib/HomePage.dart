
// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:exchanging_app/News.dart';
import 'package:exchanging_app/Settings.dart';
import 'package:exchanging_app/contact.dart';
import 'package:exchanging_app/infopage.dart';
import 'package:exchanging_app/main.dart';

import 'package:exchanging_app/selectingpage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'favorite.dart';

class exchange extends StatefulWidget {
  @override
  State<exchange> createState() => _exchangeState();
}

class _exchangeState extends State<exchange> {
  bool isClick = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Expanded(
              child: UserAccountsDrawerHeader(
                accountName: Text('baraa'),
                accountEmail: Text('baraarahmon1233@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                      'images/baraa1111.jpg',
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/bosnaev.JPG'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => settings(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite_border_rounded),
              title: const Text('Favorites'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => favoritepage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: const Text('Share'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.notifications)  ,
              title: const Text('Alarms'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => favoritepage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: const Text('Policies'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: const Text('Contact'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: const Text('Exit'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => exit(0),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'EXchange',
          style: TextStyle(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AnimatedContainer(
                color: Color.fromARGB(255, 5, 21, 73),
                duration: Duration(milliseconds: 300),
                constraints: BoxConstraints(
                  minHeight: isClick ? 20 : 0,
                  maxHeight: isClick ? 150 : 0,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image(
                              image: AssetImage(
                                'images/gold_9.png',
                              ),
                              width: 80,
                              height: 60,
                              alignment: Alignment.topCenter),
                          Text(
                            'Gold',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 245, 171, 13)),
                          ),
                          Text(
                            '600,00',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 241, 241, 241)),
                          ),
                          Text(
                            '%0.41',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 15, 224, 26)),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image(
                              image: AssetImage(
                                'images/gold_18.png',
                              ),
                              width: 80,
                              height: 60,
                              alignment: Alignment.topCenter),
                          Text(
                            'EURTRY',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 245, 171, 13)),
                          ),
                          Text(
                            '16.34',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 241, 241, 241)),
                          ),
                          Text(
                            '%1.81',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 15, 224, 26)),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => selectPage()),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image(
                              image: AssetImage(
                                'images/gold_17.png',
                              ),
                              width: 80,
                              height: 60,
                              alignment: Alignment.topCenter),
                          Text(
                            'USDTRY',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 245, 171, 13)),
                          ),
                          Text(
                            '14,01',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 241, 241, 241)),
                          ),
                          Text(
                            '%1.65',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 15, 224, 26)),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image(
                              image: AssetImage(
                                'images/gold_19.png',
                              ),
                              width: 80,
                              height: 60,
                              alignment: Alignment.topCenter),
                          Text(
                            'EUROUSD',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 245, 171, 13)),
                          ),
                          Text(
                            '1,021',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 241, 241, 241)),
                          ),
                          Text(
                            '%0.25',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 15, 224, 26)),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image(
                              image: AssetImage(
                                'images/exchangeprofil_1.jpg',
                              ),
                              width: 80,
                              height: 60,
                              alignment: Alignment.topCenter),
                          Text(
                            'EUROUSD',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 245, 171, 13)),
                          ),
                          Text(
                            '1,021',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 241, 241, 241)),
                          ),
                          Text(
                            '%0.25',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 15, 224, 26)),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            isClick = !isClick;
                          });
                        },
                        child: Column(
                          children:  [
                            SizedBox(
                              height: 45,
                            ),
                            Icon(
                              Icons.add,
                              size: 50,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.black26,
                child: Row(
                  children: const [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Unit',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Staatliches',
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Text(
                      'Price',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Staatliches',
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                  ],
                ),
              ),
              AnimatedOpacity(
                opacity: isClick == true ? 0 : 1,
                duration: Duration(milliseconds: 400),
                child: ElevatedButton(
                    onPressed: (() {
                      setState(() {
                        isClick = !isClick;
                      });
                    }),
                    child: Text('-less')),
              ),
              Transform.translate(
                offset: Offset(0, -50),
                child: AnimatedOpacity(
                  opacity: isClick == false ? 0 : 1,
                  duration: Duration(milliseconds: 400),
                  child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          isClick = !isClick;
                        });
                      }),
                      child: Text('+more')),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -50),
                child: Column(
                  children: [
                    getInfCoins(
                        'GOLD', 'GOLD', 'Gold', '907.430', '1', '1', context),
                    getInfCoins('AMERICAN DOLLAR', 'USDTRY', 'American Dollars',
                        '14.6550', '1', '1', context),
                    getInfCoins(
                        'EURO', 'EURTRY', 'Euro', '16.163', '1', '1', context),
                    getInfCoins('EURO/USD', 'EURUSD', 'Euro/Usd', '01.102', '1',
                        '1', context),
                    getInfCoins('JAPON YENI', 'JPYTRY', 'Japon Yeni', '00.118',
                        '1', '1', context),
                    getInfCoins('INGLIZ STERLINI', 'GBPTRY', 'Ingliz Sterlini',
                        '19.144', '1', '1', context),
                    getInfCoins('DANIMARKA KRONU', 'DKKTRY', 'Danimarka Kronu',
                        '02.144', '1', '1', context),
                    getInfCoins('ISVEÇ KRONU', 'SEKTRY', 'Isveç Kronu',
                        '01.543', '1', '1', context),
                    getInfCoins('NORVEÇ KRONU', 'NOKTRY', 'Norveç Kronu',
                        '01.655', '1', '1', context),
                    getInfCoins('ISVIÇRE FRANGI', 'CHFTRY', 'İsviçre Frangı',
                        '15.724', '1', '1', context),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: GNav(
        padding: EdgeInsets.all(10),
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
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => News()),
              // );
            },
            icon: Icons.newspaper,
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

Widget getInfCoins(
    String coinTitle,
    String coinType,
    String label,
    String buyPrice,
    String lowestPrice,
    String topPrice,
    BuildContext context) {
  return GestureDetector(
    onTap: (() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => InfoPage()),
      );
    }),
    child: Padding(
      padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
      child: Card(
        color: Color.fromARGB(255, 127, 147, 149),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    coinType, // coinType

                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Text(
                    label, // label

                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
              Icon(Icons.schedule),
              Text(
                '17:15',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                width: 75,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Text(
                  buyPrice, // buy price

                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
