import 'package:flutter/material.dart';

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.west,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    const Text(
                      'Путешествия',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Топ городов',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
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
                  ],
                ),
                const Row(
                  children: [
                    CustomImage(
                      image: 'image',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Путешествия по КР',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const Row(
                  children: [
                    ImageTour(
                      image: 'image',
                    ),
                  ],
                ),
                const Text(
                  'ПОСМОТРЕТЬ ВСЕ',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 124, 181, 228),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/tokio.png',
                          fit: BoxFit.cover,
                        ),
                        Column(
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'Чат "Путешествия"',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Присоединиться',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageTour extends StatelessWidget {
  const ImageTour({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).copyWith().size.height * 0.30,
      child: Expanded(
        flex: 2,
        child: Card(
          color: Colors.white,
          child: Column(children: [
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    height:
                        MediaQuery.of(context).copyWith().size.height * 0.11,
                    'assets/bishtour.png',
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            height:
                                MediaQuery.of(context).copyWith().size.height *
                                    0.11,
                            'assets/fantravel.png',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            height:
                                MediaQuery.of(context).copyWith().size.height *
                                    0.11,
                            'assets/asiatour.png',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            height:
                                MediaQuery.of(context).copyWith().size.height *
                                    0.11,
                            'assets/kettikkg.png',
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Image.asset(
            height: MediaQuery.of(context).copyWith().size.height * 0.21,
            'assets/tokio.png',
          ),
          const SizedBox(
            width: 5,
          ),
          Image.asset(
            height: MediaQuery.of(context).copyWith().size.height * 0.21,
            'assets/sydney.png',
          ),
          const SizedBox(
            width: 5,
          ),
          Image.asset(
            height: MediaQuery.of(context).copyWith().size.height * 0.21,
            'assets/amsterdam.png',
          ),
        ],
      ),
    );
  }
}
