import 'package:flutter/material.dart';

class SportPart extends StatelessWidget {
  const SportPart({super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        Image.asset(
          image,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 140),
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 30,
              width: 375,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xCCFF9500),
              ),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
