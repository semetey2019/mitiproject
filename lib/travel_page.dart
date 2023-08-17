import 'package:flutter/material.dart';

import 'package:miti_01/home/chat_buttom.dart';
import 'package:miti_01/home/top_images.dart';
import 'package:miti_01/home/tur_agents.dart';
import 'package:miti_01/pages/sport_screen.dart';
import 'package:miti_01/tur_firms.dart';
import 'package:miti_01/tur_page.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({super.key});

  @override
  State<TravelPage> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
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
            child: ListView(children: [
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
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
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
              Column(children: [
                const Text(
                  'Путешествия по КР',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SportScreen()));
                        },
                        child: const TurAgents(
                          text: 'Kettik.kg',
                          text1: '19 направлений',
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TurFirms()));
                        },
                        child: const TurAgents(
                          text: 'Bishkek Tour',
                          text1: '15 направлений',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TurPage()));
                        },
                        child: const TurAgents(
                          text: 'Fun Travels',
                          text1: '20 направлений',
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Expanded(
                      child: TurAgents(
                        text: 'Asia  Tourism',
                        text1: '17 направлений',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TurFirms()));
                      },
                      child: const Text(
                        'ПОСМОТРЕТЬ ВСЕ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 115, 149, 207),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: ChatButtom(),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
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
                    SizedBox(
                      width: 85,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 35),
                          child: Text(
                            'ПОСМОТРЕТЬ ВСЕ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 98, 129, 182),
                            ),
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
                  image: 'assets/zanzibar.png',
                  image1: 'assets/bora.png',
                  image2: 'assets/boracay.png',
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: ChatButtom()),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Топ городов',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
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
              ])
            ])));
  }
}
                
//                 const Row(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(left: 15),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Путешествия по КР',
//                             style: TextStyle(
//                                 fontSize: 22, fontWeight: FontWeight.bold),
//                           ),
//                           Column(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(left: 200),
//                                 child: Text(
//                                   'ПОСМОТРЕТЬ ВСЕ',
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.bold,
//                                     color: Color.fromARGB(255, 115, 149, 207),

//                 const SizedBox(height: 15),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       'Путешествия по КР',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => TurPage()));
//                             },
//                             child: 
//                           ),
//                         ),
//                         const SizedBox(width: 15),
//                         Expanded(
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => TurFirms()));
//                             },
//                             child: 
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 15),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => const TurPage()));
//                             },
//                             child: 
//                           ),
//                         ),
//                         const SizedBox(width: 15),
//                         Expanded(
//                           child: 
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 10),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         InkWell(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => const TurFirms()));
//                           },
//                           child: const Text(
//                             'ПОСМОТРЕТЬ ВСЕ',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Color.fromARGB(255, 115, 149, 207),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 10),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Expanded(
//                           child: 
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 10),
//                     const Row(
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(left: 15),
//                           child: Text(
//                             'Топ островов',
//                             style: TextStyle(
//                                 fontSize: 22, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 55,
//                         ),
//                         Column(
//                           children: [
//                             Text(
//                               'ПОСМОТРЕТЬ ВСЕ',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color.fromARGB(255, 115, 149, 207),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
                    
//                     const SizedBox(height: 10),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Expanded(
//                           child:

//                                 ElevatedButton(
//                                   onPressed: () {},
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: Colors.orange,
//                                   ),
//                                   child: const Text(
//                                     'Присоединиться',
//                                     style: TextStyle(
//                                         fontSize: 12, color: Colors.black),

//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 10),
//                     const Row(children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: 15),
//                         child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Путешествия по КР',
//                                 style: TextStyle(
//                                     color: Color.fromARGB(255, 115, 149, 207),
//                                     fontSize: 22,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               Column(
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(left: 200),
//                                     child: Text(
//                                       'ПОСМОТРЕТЬ ВСЕ',
//                                       style: TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                         color:
//                                             Color.fromARGB(255, 115, 149, 207),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ]),
//                       ),
//                     ]),
//                   ],
//                 )
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const TopImages(
//                   image: "assets/kyzart.png",
//                   image1: 'assets/archa.png',
//                   image2: 'assets/gory.png',
            
//               ],
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             GridView.count(
//               crossAxisCount: 3,
//               crossAxisSpacing: 1,
//               mainAxisSpacing: 5,
//               shrinkWrap: true,
//               physics: const ScrollPhysics(),
//               children: [
//                 Image.asset("assets/kyzart.png"),
//                 Image.asset("assets/gory.png"),
//                 Image.asset("assets/archa.png"),

//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
