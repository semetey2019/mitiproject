import 'package:flutter/material.dart';

import '../constants/apptexts_styles.dart';
import 'custom_text.dart';
import 'divider_widget.dart';

class Paypement extends StatelessWidget {
  const Paypement({
    super.key,
    required this.appTextStyles,
  });

  final AppTextStyles appTextStyles;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                // height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(19),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Выберите способ оплаты',
                            style: appTextStyles.sposobOplaty,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey),
                              child: const Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 17,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      DividerLine(),
                      ListView.builder(
                          itemCount: 1,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, index) {
                            return Column(
                              children: [
                                ListTile(
                                  trailing: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/check-circle.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  selected: true,
                                  leading: Icon(Icons.credit_card),
                                  title: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Карта заканчиваюшаяся на'),
                                      Text('** 4851'),
                                    ],
                                  ),
                                ),
                                DividerLine(),
                                const ListTile(
                                  leading: Icon(
                                    Icons.attach_money_rounded,
                                  ),
                                  title: Text('Наличными'),
                                ),
                                Divider(),
                                ListTile(
                                  leading: Image.asset(
                                    'assets/mbank-logo.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                  title: Text('Мбанк'),
                                ),
                                Divider(),
                                const ListTile(
                                  leading: Icon(
                                    Icons.add,
                                  ),
                                  title: Text('Добавить новую карту'),
                                ),
                                Divider(),
                              ],
                            );
                          })
                    ],
                  ),
                ),
              );
            });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 43,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.orange),
                child: Icon(
                  Icons.credit_card,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Visa Classic'),
                  Text(
                    '****-9534',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              )
            ],
          ),
          Icon(
            Icons.keyboard_arrow_right,
            size: 30,
          )
        ],
      ),
    );
  }
}
