import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.text1,
    required this.text2,
    this.style,
  });
  final String text1;
  final String text2;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$text1',
          ),
          Text(
            '$text2',
            style: style,
          ),
        ],
      ),
    );
  }
}
