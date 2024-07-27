import 'package:checkout_payment_ui/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      height: 73,
      color: const Color(0xFF34A853),
      onPressed: () {},
      child: const Text('Complete Payment', style: AppStyle.styleMedium22,),
    );
  }
}
