
import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/custom_dashed_line.dart';
import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/thank_you_status_logo.dart';
import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/thank_you_view_body_container.dart';
import 'package:flutter/material.dart';

import 'custom_shape_thank_you.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -10),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [

            ThankYouViewBodyMainContainer(),
            ThankYouStatusLogo(),
            CustomDashedLine(),

            CustomShapeThankYou(
              left: -20,
            ),
            CustomShapeThankYou(
              right: -20,
            ),


          ],
        ),
      ),
    );
  }
}







