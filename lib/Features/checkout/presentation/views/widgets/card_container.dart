import 'package:checkout_payment_ui/core/utils/app_style.dart';
import 'package:checkout_payment_ui/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 26),
        child: Row(
          children: [
            SvgPicture.asset(Assets.imagesMastercard),
            SizedBox(width: 23,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Credit Card',
                  style: AppStyle.styleRegular18,
                ),
                Text(
                  'Mastercard **78',
                  style: AppStyle.styleRegular18,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}