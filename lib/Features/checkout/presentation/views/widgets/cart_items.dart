import 'package:checkout_payment_ui/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key, required this.title, required this.price});

  final String title, price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppStyle.styleRegular18,),
        Text(price, style: AppStyle.styleRegular18,),
      ],
    );
  }
}
