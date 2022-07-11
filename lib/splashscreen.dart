import 'dart:async';

import 'package:flutter/material.dart';
import 'package:karanganbunga/home/home.dart';
import 'package:karanganbunga/login.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() async {
    var duration = Duration(seconds: 10);
    return Timer(duration, () async {
      var box = Hive.box('userBox');
      bool? sudahLogin = box.get('isLogin');

      if (sudahLogin ?? false) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => HomePage()),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => LoginPage()),
        );
      }
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/Login1.png'),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
