// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FAQs extends StatelessWidget {
  final colors;
  final String text;
  final icon;
  const FAQs(
      {super.key,
      required this.text,
      required this.icon,
      required this.colors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
          height: 230,
          width: 200,
          decoration: BoxDecoration(
            color: colors,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                    alignment: Alignment(0.9, 0),
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 40,
                    )),
              )
            ],
          )),
    );
  }
}
