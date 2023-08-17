import 'package:flutter/material.dart';

class ChatButtom extends StatelessWidget {
  const ChatButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[100],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ClipOval(),
          Image.asset(
            'assets/photo.png',
            // fit: BoxFit.cover,
          ),
          const Column(
            children: [
              Text(
                'Чат "Путешетвия"',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                '55k участников',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 13,
                ),
              ),
            ],
          ),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
            ),
            child: const Text(
              'Присоединиться',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
