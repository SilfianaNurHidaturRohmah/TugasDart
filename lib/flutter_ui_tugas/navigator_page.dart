import 'package:flutter/material.dart';

class NavigatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigator')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => HalamanBaru()),
          ),
          child: Text('Ke Halaman Baru'),
        ),
      ),
    );
  }
}

class HalamanBaru extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Baru')),
      body: Center(child: Text('Ini adalah halaman baru!')),
    );
  }
}