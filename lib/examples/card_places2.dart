import 'package:flutter/material.dart';
import 'package:miti_01/examples/place_number.dart';

class CardsPlaces2 extends StatelessWidget {
  const CardsPlaces2({
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
            SizedBox(
              width: 84,
            ),
            PlaceNumber(text: '2'),
            SizedBox(
              width: 18,
            ),
            PlaceNumber(text: '2'),
          ],
        )
      ],
    );
  }
}
