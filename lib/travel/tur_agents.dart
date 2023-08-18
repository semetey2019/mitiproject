import 'package:flutter/material.dart';

class TurAgents extends StatelessWidget {
  const TurAgents({
    super.key,
    required this.text,
    required this.text1,
  });
  final String text;
  final String text1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.orange, width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(color: Colors.orange),
          ),
          SizedBox(height: 10),
          Text(
            text1,
            style: const TextStyle(color: Colors.orange),
          ),
        ],
      ),
    );
  }
}
