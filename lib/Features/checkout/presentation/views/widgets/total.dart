import 'package:checkout_payment_ui/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class Total extends StatelessWidget {
  const Total({super.key, required this.total, required this.price});

  final String total, price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          total,
          style: AppStyle.styleSemiBold24,
        ),
        Text(
          price,
          style: AppStyle.styleSemiBold24,
        ),
      ],
    );
  }
}
