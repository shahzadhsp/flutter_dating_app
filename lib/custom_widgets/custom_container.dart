import 'package:flutter/material.dart';

class CustomTextContainer extends StatelessWidget {
  final String title;
  const CustomTextContainer({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0, right: 5),
      child: Container(
        height: 30,
        width: 62,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.9, 1],
            colors: [Colors.blue, Colors.red, Colors.purple],
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
