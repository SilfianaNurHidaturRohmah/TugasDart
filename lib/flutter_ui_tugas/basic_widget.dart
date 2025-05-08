import 'package:flutter/material.dart';

class BasicWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Basic Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Halo, ini adalah Basic Widget!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Tombol'),
            ),
            Icon(Icons.star, color: Colors.orange, size: 50),
          ],
        ),
      ),
    );
  }
}