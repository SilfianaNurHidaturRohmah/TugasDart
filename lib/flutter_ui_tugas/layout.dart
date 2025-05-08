import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout')),
      body: Column(
        children: [
          Expanded(
            child: Container(color: Colors.red),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.green)),
                Expanded(child: Container(color: Colors.blue)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}