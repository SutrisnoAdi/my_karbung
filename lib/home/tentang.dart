import 'package:flutter/material.dart';

class tentang extends StatefulWidget {
  const tentang({Key? key}) : super(key: key);

  @override
  State<tentang> createState() => _tentangState();
}

class _tentangState extends State<tentang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Tentang'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Halaman Tentang'),
          ],
        ),
      ),
    );
  }
}
