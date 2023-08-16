import 'package:flutter/material.dart';

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Icons.arrow_back_sharp,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  const Text(
                    'Путешествия',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
                              fontSize: 22, fontWeight: FontWeight.normal),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Text(
                            'ПОСМОТРЕТЬ ВСЕ',
                            style: TextStyle(
                              fontSize: 18,
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
              const Text(
                'Путешествия по КР',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  ImageTour(
                    image: 'image',
                  ),
                ],
              ),

              //  SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,

              // ),
            ],
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
    return Column(children: [
      Row(
        children: [
          InkWell(
            onTap: () {
              Image.asset(
                'assets/kettikkg.png',
                width: 180,
                height: 130,
              );
            },
          ),
          SizedBox(
            width: 30,
          ),
          Image.asset(
            'assets/bishtour.png',
            width: 180,
            height: 130,
          ),
          Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/fantravel.png',
                    width: 180,
                    height: 130,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Image.asset(
                    'assets/asiatour.png',
                    width: 180,
                    height: 130,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ]);
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
            'assets/tokio.png',
            width: 125,
          ),
          SizedBox(
            width: 5,
          ),
          Image.asset(
            'assets/sydney.png',
            width: 125,
            height: 160,
          ),
          SizedBox(
            width: 5,
          ),
          Image.asset(
            'assets/amsterdam.png',
            width: 125,
          ),
        ],
      ),
    );
  }
}
