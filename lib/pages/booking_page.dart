import 'package:flutter/material.dart';
import 'package:miti_01/examples/card_places2.dart';
import 'package:miti_01/pages/booking_info_page.dart';

import 'package:miti_01/pages/tur_firms.dart';

import '../examples/card_places.dart';
import '../examples/custom_btn.dart';
import '../examples/places_widget.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F0F4),
      appBar: AppBar(
        backgroundColor: Color(0xffF0F0F4),
        leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => TurFirms(),
                ),
              );
            },
            child: Icon(Icons.arrow_back)),
        title: Text(
          'Занять место',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InfoPlaces(
              color: Colors.white,
              text: 'Свободно',
            ),
            SizedBox(
              width: 10,
            ),
            InfoPlaces(
              color: Colors.black,
              text: 'Занята',
            ),
            SizedBox(
              width: 10,
            ),
            InfoPlaces(
              color: Colors.orange,
              text: 'Ваша Бронь',
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'План маршрутки',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 21,
        ),
        CardsPlaces(),
        const SizedBox(
          height: 25,
        ),
        CardsPlaces(),
        const SizedBox(
          height: 25,
        ),
        CardsPlaces(),
        const SizedBox(
          height: 25,
        ),
        CardsPlaces(),
        const SizedBox(
          height: 25,
        ),
        CardsPlaces2(),
        const SizedBox(
          height: 64,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: CustomButton(
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookingInfo(),
                ),
              );
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 90,
                ),
                Text(
                  'Забронировать',
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  width: 70,
                ),
                Icon(
                  Icons.arrow_right_alt,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
