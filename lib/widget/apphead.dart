import 'package:flutter/material.dart';

Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Instagram",
            style: TextStyle(
                fontFamily: 'Billabong', fontSize: 40, color: Colors.black),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.favorite_outline_outlined,
                  size: 31,
                  color: Colors.black,
                ),
              ),
              Icon(
                Icons.messenger_outline_rounded,
                size: 31,
                color: Colors.black,
              ),
            ],
          )
        ],
      ),
    ),
  );
}
