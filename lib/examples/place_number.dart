import 'package:flutter/material.dart';

class PlaceNumber extends StatelessWidget {
  const PlaceNumber({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 66,
          height: 66,
          alignment: Alignment.center,
          // padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.white),
          child: Text(
            '$text',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
