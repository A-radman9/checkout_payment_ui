import 'package:checkout_payment_ui/Features/checkout/presentation/views/payment_details_view.dart';
import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/cart_items.dart';
import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/total.dart';
import 'package:checkout_payment_ui/core/utils/assets.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(Assets.imagesBasket),
        ),
        const SizedBox(
          height: 15,
        ),
        const CartItems(title: 'Order Subtotal', price: r'$42.97'),
        const SizedBox(
          height: 3,
        ),
        const CartItems(title: 'Discount', price: r'$0'),
        const SizedBox(
          height: 3,
        ),
        const CartItems(title: 'Order Subtotal', price: r'$8'),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Divider(
            height: 34,
            thickness: 2,
            color: Color(0xFFC6C6C6),
          ),
        ),
        const Total(total: 'Total', price: r'$50.97'),
        const SizedBox(
          height: 16,
        ),
         CustomButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentDetailsView(),));
          },
           text: 'Complete Payment',
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
