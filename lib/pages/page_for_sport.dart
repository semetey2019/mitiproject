import 'package:flutter/material.dart';

import '../constants/apptexts_styles.dart';

class SportPage extends StatefulWidget {
  const SportPage({super.key});

  @override
  State<SportPage> createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  @override
  Widget build(BuildContext context) {
    final appTextStyles = AppTextStyles(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Спорт'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.mic),
                    fillColor: Colors.grey[200], // Optional: Background color
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 37,
              ),
              SportWidget(
                style: appTextStyles.sportText,
                text: 'Футбол',
                url: 'football',
              ),
              const SizedBox(
                height: 12,
              ),
              SportWidget(
                style: appTextStyles.sportText,
                text: 'Баскетбол',
                url: 'basketball',
              ),
              const SizedBox(
                height: 12,
              ),
              SportWidget(
                style: appTextStyles.sportText,
                text: 'Шахматы',
                url: 'chess',
              ),
              const SizedBox(
                height: 12,
              ),
              SportWidget(
                style: appTextStyles.sportText,
                text: 'Лыжи',
                url: 'ski',
              ),
              const SizedBox(
                height: 12,
              ),
              SportWidget(
                style: appTextStyles.sportText,
                text: 'Стрельба',
                url: 'gun',
              ),
              const SizedBox(
                height: 12,
              ),
              SportWidget(
                style: appTextStyles.sportText,
                text: 'Бильярд',
                url: 'snooker',
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SportWidget extends StatelessWidget {
  const SportWidget({
    super.key,
    required this.style,
    required this.text,
    required this.url,
  });

  final TextStyle style;
  final String text;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
        image: DecorationImage(
            image: AssetImage('assets/$url.jpeg'), fit: BoxFit.cover),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 130,
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange),
              child: Text(
                '$text',
                style: style,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
