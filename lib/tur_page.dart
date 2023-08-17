import 'package:flutter/material.dart';
import 'package:miti_01/home/top_images.dart';

class TurPage extends StatefulWidget {
  const TurPage({super.key});

  @override
  State<TurPage> createState() => TurPageState();
}

class TurPageState extends State<TurPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
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
            "Путешествия",
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
            const SizedBox(height: 10),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Топ городов',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 85,
                ),
                Column(
                  children: [
                    Text(
                      'ПОСМОТРЕТЬ ВСЕ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 115, 149, 207),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const TopImages(
              image: "assets/tokio.png",
              image1: 'assets/sydney.png',
              image2: 'assets/amsterdam.png',
            ),
            const SizedBox(height: 15),
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Путешествия по КР',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/turagent.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 10),
                    Image.asset(
                      "assets/turagent.png",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    const SizedBox(height: 10),
                    Image.asset(
                      "assets/turagent.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
