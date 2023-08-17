import 'package:flutter/material.dart';
import 'package:miti_01/pages/booking_page.dart';
import 'package:miti_01/travel_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.orange, primary: Colors.black),
        useMaterial3: true,
      ),
      home: const BookingPage(),
    );
  }
}
