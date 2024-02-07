import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello Mario'),
          backgroundColor: Colors.deepOrange,
        ),
        body: const Center(
          child: Text('Hello, XD!'),
        ),
      ),
    ),
  );
}