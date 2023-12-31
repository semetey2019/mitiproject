import 'package:flutter/material.dart';

class AppTextStyles {
  final BuildContext context;

  AppTextStyles(this.context);

  TextStyle get detailText => Theme.of(context)
      .textTheme
      .bodyLarge!
      .copyWith(fontWeight: FontWeight.w700);

  TextStyle get resultText => Theme.of(context)
      .textTheme
      .titleLarge!
      .copyWith(fontWeight: FontWeight.w800);

  TextStyle get appBarTitle => Theme.of(context)
      .textTheme
      .headlineSmall!
      .copyWith(fontWeight: FontWeight.bold, fontSize: 18);

  TextStyle get sposobOplaty => Theme.of(context)
      .textTheme
      .bodyLarge!
      .copyWith(fontWeight: FontWeight.w600);

  TextStyle get sucessfullyText => Theme.of(context)
      .textTheme
      .headlineSmall!
      .copyWith(fontWeight: FontWeight.bold, fontSize: 16);
  TextStyle get authorText => Theme.of(context)
      .textTheme
      .headlineSmall!
      .copyWith(fontWeight: FontWeight.w600, fontSize: 12);
  TextStyle get dialogText => Theme.of(context)
      .textTheme
      .bodySmall!
      .copyWith(fontWeight: FontWeight.w400, fontSize: 13);

  TextStyle get sportText => Theme.of(context)
      .textTheme
      .headlineSmall!
      .copyWith(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white);
}
