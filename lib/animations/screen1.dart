import 'package:flutter/material.dart';
import 'package:test2/animations/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 1')),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => Screen2()),
          ),
          child: Hero(
            tag: 'logo', 
            child: FlutterLogo(size: 100),
          ),
        ),
      ),
    );
  }
}
