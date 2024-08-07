import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/card_container.dart';
import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/thank_you_payment_time.dart';
import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/total.dart';
import 'package:checkout_payment_ui/core/utils/app_style.dart';
import 'package:checkout_payment_ui/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThankYouViewBodyMainContainer extends StatelessWidget {
  const ThankYouViewBodyMainContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 50 + 16, left: 20, right: 20),
        child: Column(
          children: [
            Text('Thank you!', style: AppStyle.styleMedium25),
            Text('Your transaction was successful',
                style: AppStyle.styleRegular20),
            SizedBox(
              height: 42,
            ),
            ThankYouPaymentTime(
              title: 'Data',
              value: '01/24/2023',
            ),
            SizedBox(
              height: 20,
            ),
            ThankYouPaymentTime(
              title: 'Time',
              value: '10:15 AM',
            ),
            SizedBox(
              height: 20,
            ),
            ThankYouPaymentTime(
              title: 'To',
              value: 'Sam Louis',
            ),
            Divider(
              height: 60,
            ),
            Total(total: 'total', price: r'$50.97'),
            SizedBox(
              height: 30,
            ),
            CardContainer(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(Assets.imagesBarcode),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.50, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      style: AppStyle.styleSemiBold24.copyWith(color: Color(0xFF34A853),)
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height *.2 + 20) / 2) -29,
            ),
          ],
        ),
      ),
    );
  }
}


