import 'package:flutter/material.dart';
import 'package:miti_01/constants/apptexts_styles.dart';
import 'package:miti_01/pages/booking_page.dart';
import 'package:miti_01/tur_firms.dart';

class GroupChat extends StatefulWidget {
  const GroupChat({super.key});

  @override
  State<GroupChat> createState() => _GroupChatState();
}

class _GroupChatState extends State<GroupChat> {
  @override
  Widget build(BuildContext context) {
    final appTextStyles = AppTextStyles(context);

    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.grey,
        elevation: 0.4,
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
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Travel',
              style: appTextStyles.appBarTitle,
            ),
            Text(
              '45 участников',
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 26),
            child: Icon(Icons.more_horiz),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Text(
            'сегодня',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('assets/amsterdam.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 210,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
