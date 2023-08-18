import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text(
          'I Am Poor',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Image.asset('images/coal.png'),
      ),
    ),
  ));
}
