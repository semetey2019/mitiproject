import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(
            Icons.west,
            size: 33,
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
                suffixIcon: const Icon(Icons.keyboard_voice),
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
            GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 5,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              children: [
                Image.asset("assets/tokio.png"),
                Image.asset("assets/sydney.png"),
                Image.asset("assets/amsterdam.png"),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Путешествия по КР',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.orange, width: 1),
                        ),
                        child: Column(children: [
                          Text(
                            "Kettik.kg",
                            style: TextStyle(color: Colors.orange),
                          )
                        ]),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Container(
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.orange.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 10,
                              ),
                            ]),
                        child: Column(children: [
                          Text(
                            "Kettik.kg",
                            style: TextStyle(color: Colors.orange),
                          )
                        ]),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//  ClipOval(
//                     child: Image.asset(
//                   "assets/tokio.png",
//                   fit: BoxFit.cover,