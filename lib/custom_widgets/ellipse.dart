import 'package:flutter/material.dart';

class Ellipse extends StatelessWidget {
  const Ellipse({
    super.key,
    required this.width,
    required this.height,
    required this.radius,
    this.top,
    this.left,
  });
  final double width;
  final double height;
  final double? top;
  final double? left;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius), color: Colors.orange),
      ),
    );
  }
}
