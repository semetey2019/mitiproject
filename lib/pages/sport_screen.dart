import 'package:flutter/material.dart';
import 'package:miti_01/home/sport_part.dart';

class SportScreen extends StatefulWidget {
  const SportScreen({super.key});

  @override
  State<SportScreen> createState() => _SportScreenState();
}

class _SportScreenState extends State<SportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.west,
              size: 33,
            ),
          ),
        ),
        title: const Center(
          child: Text(
            "Спорт",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.keyboard_voice),
                ),
                prefixIcon: const Icon(Icons.search),
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const SportPart(
              image: 'assets/soccer.png',
              text: 'Фудбол',
            ),
            const SizedBox(height: 15),
            const SportPart(
              image: 'assets/chess.png',
              text: 'Шахмат',
            ),
            const SizedBox(height: 15),
            const SportPart(
              image: 'assets/baskedbol.png',
              text: 'Баскедбол',
            ),
            const SizedBox(height: 15),
            const SportPart(
              image: 'assets/sky.png',
              text: 'Лыжа',
            ),
          ],
        ),
      ),
    );
  }
}
