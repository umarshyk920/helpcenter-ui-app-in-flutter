// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class listTiles extends StatelessWidget {
  final String text;
  final String quantity;
  final icon;
  const listTiles(
      {super.key,
      required this.text,
      required this.icon,
      required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 70,
        width: 300,
        child: Row(
          children: [
            Image.asset(icon),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                quantity,
                  style: TextStyle(color: Colors.grey.shade600),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
