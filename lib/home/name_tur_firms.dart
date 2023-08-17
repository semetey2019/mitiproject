import 'package:flutter/material.dart';

class NameTurFirms extends StatelessWidget {
  const NameTurFirms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            "assets/turagent.png",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Row(
            children: [
              Container(
                child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "name tur firms",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                width: 80,
              ),
              Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "4.8",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      Icon(Icons.star, color: Colors.orange, size: 20),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text('ПОСМОТРЕТЬ ВСЕ',
                        style: TextStyle(
                            color: Color(0xff5BA0BF),
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
