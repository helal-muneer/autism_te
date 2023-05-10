import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  final String text;
  NextScreen({required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
