import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({Key? key, required this.icon, required this.hintText}) : super(key: key);
  final IconData icon;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
      child: Container(
      height: 56,
      child: TextField(
      textAlign: TextAlign.right,
      decoration: InputDecoration(
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      ),
      hintText: hintText,
      prefixIcon: Container(
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
      border: Border(
      right: BorderSide(
      width: 1.5,
      color: Colors.black38
      )
      )
      ),
      child: Icon(icon),
      ),
          ),
        ),
      ),
      ),
    );
  }
}
