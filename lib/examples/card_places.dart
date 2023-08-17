import 'package:flutter/material.dart';
import 'package:miti_01/examples/place_number.dart';

class CardsPlaces extends StatelessWidget {
  const CardsPlaces({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            PlaceNumber(text: '2'),
            SizedBox(
              width: 18,
            ),
            PlaceNumber(text: '3'),
            SizedBox(
              width: 18,
            ),
            PlaceNumber(text: '4'),
            SizedBox(
              width: 18,
            ),
            PlaceNumber(text: '5'),
          ],
        )
      ],
    );
  }
}
