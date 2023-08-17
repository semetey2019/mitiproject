import 'package:flutter/material.dart';

class InfoPlaces extends StatelessWidget {
  const InfoPlaces({
    super.key,
    required this.color,
    required this.text,
  });
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(6),
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: color),
        ),
        Text(
          '$text',
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}
