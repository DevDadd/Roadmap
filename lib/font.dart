import 'package:flutter/material.dart';

class Font extends StatelessWidget {
  const Font({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Hello", style: TextStyle(fontFamily: 'Cairo', fontWeight: FontWeight.bold),),
    );
  }
}