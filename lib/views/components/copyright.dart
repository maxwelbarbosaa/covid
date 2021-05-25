import 'package:flutter/material.dart';

class Copyright extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "\u00a9 MD Apps - Desenvolvendo seu aplivativo .",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 11),
    );
  }
}
