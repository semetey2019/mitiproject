import 'package:flutter/material.dart';

import '../constants/apptexts_styles.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({
    super.key,
    this.topLeft = 25,
    this.topRight = 25,
    this.bottomLeft = 25,
    this.bottomRight = 25,
    required this.color,
    required this.time,
    required this.text,
    this.author,
    required this.width,
    required this.height,
  });
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;
  final Color color;
  final String time;
  final String text;
  final String? author;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final appTextStyles = AppTextStyles(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(topLeft),
                  topRight: Radius.circular(topRight),
                  bottomRight: Radius.circular(bottomRight),
                  bottomLeft: Radius.circular(bottomLeft)),
              color: color),
          child: Padding(
            padding: const EdgeInsets.only(left: 18, top: 12, right: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (author != null)
                  Text(
                    '$author',
                    style: appTextStyles.authorText,
                  ),
                if (author != null)
                  const SizedBox(
                    height: 5,
                  ),
                Text(
                  '$text',
                  style: appTextStyles.dialogText,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, top: 8),
          child: Text(
            '$time',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        )
      ],
    );
  }
}
