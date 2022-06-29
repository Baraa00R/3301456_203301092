// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:exchanging_app/infopage.dart';
import 'package:flutter/material.dart';

class selectPage extends StatelessWidget {
  const selectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'currencies',
        ),
      ),
      body: Container(
        child: Expanded(
          child: Column(
            children: [
              Container(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
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
              ),
            ],
          ),
        ),
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
      child: Expanded(
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
    ),
  );
}
