
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:exchanging_app/LoginPage.dart';
import 'HomePage.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp() ,
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/playstore.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text( 
                  'Welcome to',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  'Currency EXchange',
                  style: TextStyle(
                      color: Color.fromARGB(255, 60, 216, 221), fontSize: 25),
                ),
                
              ],
              
            ),
            SizedBox(
              width: 10,
              height: 340,
            ),
           
            Column(
              children: [
                Card(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 32, 137, 207))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 39, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Text(
                  'or',
                  style: TextStyle(fontSize: 22, color: Colors.black87),
                ),
                Card(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 32, 137, 207))),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => exchange()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Get Satrted',
                        style: TextStyle(fontSize: 39, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Hello,',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'this is a ',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Text(
                  'Currency Exchange App ',
                  style: TextStyle(
                      fontFamily: 'KdamThmorPro',
                      color: Color.fromARGB(255, 60, 216, 221),
                      fontSize: 15),
                ),
              ],
            ),
            Text(
              'here you can see the currency prices minute by minute ',
              style: TextStyle(color: Colors.white, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
