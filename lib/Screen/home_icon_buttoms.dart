import 'package:flutter/material.dart';

class CatigoryW extends StatelessWidget {
  String image;
  String text;
  Color color;

  CatigoryW({required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 170,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
           color: Color(0x9F760D16),
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                image,
                width: 120,
                height: 120,
              ),
            ),
            // SizedBox(
            //   height: 1,
            // ),
            Text(
              text,
              style: TextStyle(color: color, fontSize: 18),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
