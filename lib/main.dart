import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'splashscreen.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:karanganbunga/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();
  var box = await Hive.openBox('userBox');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[900],
      ),
      home: SplashScreen(),
    );
  }
}
