import 'package:flutter/material.dart';

class TurFirms extends StatefulWidget {
  const TurFirms({super.key});

  @override
  State<TurFirms> createState() => TurFirmsState();
}

class TurFirmsState extends State<TurFirms> {
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
            const SizedBox(height: 30),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Туры',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const TurGroup(
              image: 'assets/mountain.png',
              text: 'Тур по горе Пик Ленина',
              text1: '\$34 за тур',
              text2: 'Пик Ленина ,горная база',
            ),
            const SizedBox(height: 15),
            const TurGroup(
              image: 'assets/like.png',
              text: 'Тур по Иссык-Кулю',
              text1: '\$40 за тур',
              text2: 'Иссык-Кульская область, город Чолпон-Ата',
            ),
            const SizedBox(height: 15),
            const TurGroup(
              image: 'assets/like.png',
              text: 'Тур по Иссык-Кулю',
              text1: '\$34 за тур',
              text2: 'Иссык-Кульская область, город Чолпон-Ата',
            ),
          ],
        ),
      ),
    );
  }
}

class TurGroup extends StatelessWidget {
  const TurGroup(
      {super.key,
      required this.image,
      required this.text,
      required this.text1,
      required this.text2});
  final String image;
  final String text;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            image,
            width: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 50,
              ),
              const Icon(Icons.star, color: Colors.amber, size: 20),
              const Icon(Icons.star, color: Colors.amber, size: 20),
              const Icon(Icons.star, color: Colors.amber, size: 20),
              const Icon(Icons.star, color: Colors.amber, size: 20),
              const Icon(Icons.star, color: Colors.amber, size: 20),
            ],
          ),
          Row(
            children: [
              Text(text1),
            ],
          ),
          Row(
            children: [
              const Icon(Icons.location_on_outlined),
              Text(
                text2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
