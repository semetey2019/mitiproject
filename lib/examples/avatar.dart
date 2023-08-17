import 'package:flutter/material.dart';

class Interlocutor extends StatelessWidget {
  const Interlocutor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage('assets/amsterdam.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
