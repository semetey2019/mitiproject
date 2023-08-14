import 'package:flutter/material.dart';

class SportScreen extends StatefulWidget {
  const SportScreen({super.key});

  @override
  State<SportScreen> createState() => SportScreenState();
}

class SportScreenState extends State<SportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 5,
      ),
      // body: Column(
      //   children: [
      //     Container(
      //       child: Image.asset("assets/archa.png", fit: BoxFit.cover),
      //     ),
      //   ],
      // ),
    );
  }
}
