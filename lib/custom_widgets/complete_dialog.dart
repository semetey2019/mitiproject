import 'package:flutter/material.dart';

import 'ellipse.dart';

class Complete extends StatelessWidget {
  const Complete({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.orange),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 35,
                    top: 40,
                    child: Transform.rotate(
                      angle: -0.5,
                      child: Container(
                        width: 6,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 22,
                    left: 56,
                    child: Transform.rotate(
                      angle: 0.7,
                      child: Container(
                        width: 6,
                        height: 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Ellipse(
              width: 12,
              height: 12,
              radius: 6,
              top: 15,
              left: 20,
            ),
            const Ellipse(
              width: 9,
              height: 9,
              radius: 4.5,
              left: 115,
              top: 30,
            ),
            const Ellipse(
              width: 6,
              height: 6,
              radius: 3,
              left: 100,
              top: 10,
            ),
            const Ellipse(
              width: 6,
              height: 6,
              radius: 3,
              left: 122,
              top: 20,
            ),
            const Ellipse(
              width: 6,
              height: 6,
              radius: 3,
              left: 122,
              top: 60,
            ),
            const Ellipse(
              width: 6,
              height: 6,
              radius: 3,
              left: 50,
            ),
            const Ellipse(
              width: 15,
              height: 15,
              radius: 8,
              left: 10,
              top: 110,
            ),
            const Ellipse(
              width: 10,
              height: 10,
              radius: 5,
              left: 50,
              top: 120,
            ),
            const Ellipse(
              width: 6,
              height: 6,
              radius: 3,
              left: 90,
              top: 122,
            ),
            const Ellipse(
              width: 10,
              height: 10,
              radius: 5,
              left: 105,
              top: 100,
            ),
            const Ellipse(
              width: 12,
              height: 12,
              radius: 6,
              left: 115,
              top: 110,
            ),
            const Ellipse(
              width: 8,
              height: 8,
              radius: 4,
              top: 75,
            ),
          ],
        ),
      ],
    );
  }
}
