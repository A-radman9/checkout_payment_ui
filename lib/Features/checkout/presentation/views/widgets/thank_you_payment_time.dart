import 'package:checkout_payment_ui/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class ThankYouPaymentTime extends StatelessWidget {
  const ThankYouPaymentTime({
    super.key, required this.title, required this.value,
  });
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
            title,
            style: AppStyle.styleRegular18
        ),
        Text(
            value,
            style: AppStyle.styleSemiBold18
        )
      ],
    );
  }
}