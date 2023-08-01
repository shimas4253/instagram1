import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram1/data_base/db_functions/functions.dart';
import 'package:instagram1/navigation_bar.dart';
import 'package:instagram1/pages/login_page.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  void initState() {

    super.initState();
    checkuserLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 270, left: 150),
            child: Image(
                image: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/733/733558.png',
                    scale: 5)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 150),
            child: Text(
              'from',
              style: TextStyle(color: Colors.black54),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Image(
              image: AssetImage('assets/images/meta (2).png'),
              height: 50,
              width: 120,
            ),
          )
        ],
      ),
    );
  }

  gotoLogin() async {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => loginpage()));
  }

  checkuserLogin() async {
    getStudent();
    final _userLogin = studentListModel.value;
    if (_userLogin.isEmpty) {
      gotoLogin();
    } else {
      Future.delayed(Duration(seconds: 3));
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => welcomePage()));
    }
  }
}

