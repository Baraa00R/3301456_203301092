// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  int count = 0;
  List<IconData> _getIcons = [
    Icons.visibility,
    Icons.visibility_off
  ]; // كلمة الس

  List<String> geterrormesage = ['', 'password or email is empty'];
  int count2 = 0;
  List<bool> _getPas = [false, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'E-mail Address',
                hintStyle: TextStyle(
                    fontSize: 12, color: Colors.black54, letterSpacing: 1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.email),
                fillColor: Colors.white,
                filled: true,
                suffixText: '@hotmail.com',
                suffixStyle: TextStyle(fontSize: 12, color: Colors.black54),
              ),
              controller: email,
              onSubmitted: (index) {
                print('your email -: ${index.toString()}');
              },
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(
                    fontSize: 12, color: Colors.black54, letterSpacing: 1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.key),
                fillColor: Colors.white,
                filled: true,
                suffixIcon: IconButton(
                  icon: Icon(_getIcons[count]),
                  onPressed: () {
                    setState(() {
                      count == 0 ? count++ : count = 0;
                      // if(count == 0){
                      //   count += 1;
                      // }else{
                      //   count = 0;
                      // }
                    });
                  },
                ),
              ),
              controller: pass,
              onSubmitted: (index) {
                print('your password -: ${index.toString()}');
              },
              obscureText: _getPas[count],
              keyboardType: TextInputType.visiblePassword,
            ),
          ),
          Transform.translate(
            offset: Offset(-90, 0),
            child: Text(
              geterrormesage[count2],
              style: TextStyle(
                color: Colors.red,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (() {
              setState(() {
                if (email.text.isEmpty || pass.text.isEmpty) {
                  if (count2 != 1) {
                    count2++;
                  }
                } else {
                  count2 = 0;
                  print('your email is ' + email.text);
                  print('your passowrd is ' + pass.text);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => exchange(),
                    ),
                  );
                }
              });
              
            }),
            child: Container(
              height: 50,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.cyan,
                border: Border.all(width: 2, color: Colors.black),
              ),
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

