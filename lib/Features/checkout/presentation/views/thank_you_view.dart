import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/build_app_bar.dart';
import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/thank_you_view_body.dart';
import 'package:flutter/material.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: const ThankYouViewBody(),
    );
  }
}
