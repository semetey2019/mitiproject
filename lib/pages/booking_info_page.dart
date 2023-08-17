import 'package:flutter/material.dart';
import 'package:miti_01/constants/apptexts_styles.dart';
import 'package:miti_01/examples/custom_btn.dart';
import 'package:miti_01/pages/group_chat.dart';

import '../custom_widgets/complete_dialog.dart';
import '../custom_widgets/custom_text.dart';
import '../custom_widgets/details_widget.dart';
import '../custom_widgets/paypement_widget.dart';

class BookingInfo extends StatelessWidget {
  BookingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final appTextStyles = AppTextStyles(context);

    return Scaffold(
      backgroundColor: Color(0xffF0F0F4),
      appBar: AppBar(
        backgroundColor: Color(0xffF0F0F4),
        title: Text('Тур по ИК', style: appTextStyles.appBarTitle),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('assets/issykkul.jpeg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Тур по Иссык-Кулю',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        const Row(
                          children: [
                            Icon(Icons.star, size: 18, color: Colors.yellow),
                            Icon(Icons.star, size: 18, color: Colors.yellow),
                            Icon(Icons.star, size: 18, color: Colors.yellow),
                            Icon(Icons.star, size: 18, color: Colors.yellow),
                            Icon(Icons.star, size: 18, color: Colors.yellow),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('\$34 за тур'),
                        const SizedBox(
                          height: 11,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: Color(0xff2C698D),
                              size: 19,
                            ),
                            Text(
                              'Иссык-Кульская область, город Чолпон-Ата',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            CustomText(
              text: 'Способ оплаты',
              style: appTextStyles.detailText,
            ),
            const SizedBox(
              height: 16,
            ),
            Paypement(appTextStyles: appTextStyles),
            const SizedBox(
              height: 32,
            ),
            CustomText(
              text: 'Детали заказа',
              style: appTextStyles.detailText,
            ),
            const SizedBox(
              height: 16,
            ),
            Details(
              text1: 'Сумма',
              text2: '1500 сом',
            ),
            const SizedBox(
              height: 28,
            ),
            Details(
              text1: 'Итого',
              text2: '1500 сом',
              style: appTextStyles.resultText,
            ),
            const SizedBox(
              height: 24,
            ),
            Center(
              child: CustomButton(
                onpressed: () => {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      content: Complete(),
                      actions: <Widget>[
                        Text(
                          'Ура, ваш заказ успешно оформлен!',
                          style: appTextStyles.sucessfullyText,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Мы скоро с вами свяжемся',
                          style: appTextStyles.sucessfullyText,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Center(
                          child: CustomButton(
                            onpressed: () {
                              Navigator.pop(context);

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      GroupChat(),
                                ),
                              );
                            },
                            child: Text('Ок спасибо'),
                          ),
                        )
                      ],
                    ),
                  ),
                },
                child: Text('Оплатить'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
