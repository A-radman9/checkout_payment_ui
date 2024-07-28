import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/active_and_inactive_payment_method.dart';
import 'package:checkout_payment_ui/core/utils/assets.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({
    super.key,
  });

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int activeIndex = 0;
  List<String> paymentMethodImages = [
    Assets.imagesCard,
    Assets.imagesPaypal,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodImages.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                activeIndex = index;
                setState(() {

                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: ActiveAndInActivePaymentMethod(
                  isActive: activeIndex == index,
                  image: paymentMethodImages[index],
                ),
              ),
            );
          },),
    );
  }
}

