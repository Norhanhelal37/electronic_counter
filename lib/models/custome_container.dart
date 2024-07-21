import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  Box(
      {super.key,
      required this.high,
      required this.wid,
      required this.chil,
      required this.my_color,
      required this.font
      
      });

  final double high;
  final double wid;
  final dynamic chil;
  final Color my_color;
  final double font;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: high,
      width: wid,
      decoration: BoxDecoration(
          color: my_color, borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Center(
        child: Text(
          "$chil",
          textAlign: TextAlign.center,
          style:  TextStyle(
            fontSize: font, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
