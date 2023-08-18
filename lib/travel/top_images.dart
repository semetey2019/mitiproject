import 'package:flutter/material.dart';

class TopImages extends StatelessWidget {
  const TopImages(
      {super.key,
      required this.image,
      required this.image1,
      required this.image2});
  final String image;
  final String image1;
  final String image2;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      children: [
        Image.asset(
          image,
          width: double.infinity,
          height: double.infinity,
        ),
        Image.asset(
          image1,
          width: double.infinity,
          height: double.infinity,
        ),
        Image.asset(
          image2,
          width: double.infinity,
          height: double.infinity,
        ),
      ],
    );
  }
}
