import 'package:flutter/material.dart';
import 'package:miti_01/constants/apptexts_styles.dart';

import 'package:miti_01/tur_firms.dart';

import '../custom_widgets/dialog_widget.dart';
import '../examples/avatar.dart';

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
      backgroundColor: Color(0xffF0F0F4),
      appBar: AppBar(
        backgroundColor: Color(0xffF0F0F4),
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
      ),
      body: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Text(
            'сегодня',
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 32,
              top: 16,
              right: 32,
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Interlocutor(),
                    SizedBox(
                      width: 10,
                    ),
                    DialogWidget(
                      width: 230,
                      height: 90,
                      bottomLeft: 5,
                      color: Colors.white,
                      time: '08:20 AM',
                      text:
                          'Привет всем, когда встpетимся? У меня столько новостей',
                      author: 'Алымбек Алыкулов',
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DialogWidget(
                      width: 190,
                      height: 75,
                      bottomRight: 5,
                      color: Colors.orange,
                      time: '08:21 AM',
                      text:
                          'Привет. Да, давай. Завтра можно в центре сойтись)).',
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Interlocutor(),
                    SizedBox(
                      width: 10,
                    ),
                    DialogWidget(
                      width: 230,
                      height: 125,
                      bottomLeft: 5,
                      color: Colors.white,
                      time: '08:22 AM',
                      text:
                          'Я звонил тебе вчера, но ты не ответил на звонок, надеюсь, все хорошо, хотя........увидимся позже сегодня....',
                      author: 'Алина Ким',
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DialogWidget(
                      width: 190,
                      height: 75,
                      bottomRight: 5,
                      color: Colors.orange,
                      time: '08:23 AM',
                      text:
                          'Привет. Да, давай. Завтра можно в центре сойтись)).',
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 116,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Icon(
                    Icons.add_box_rounded,
                    color: Colors.orange,
                    size: 35,
                  ),
                ),
                suffixIcon: Icon(
                  Icons.send_rounded,
                  color: Colors.orange,
                  size: 35,
                ),
                border: InputBorder.none, // Adjust the radius as needed

                hintText: 'Сообщение',
                hintStyle: TextStyle(color: Colors.orange),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
