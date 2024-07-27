import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/my_cart_view_body.dart';
import 'package:checkout_payment_ui/core/utils/app_style.dart';
import 'package:checkout_payment_ui/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(child: SvgPicture.asset(Assets.imagesArrowBack),),
        title: const Text(
          'My Cart',
          style: AppStyle.styleMedium25,
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: MyCartViewBody(),
      ),
    );
  }
}
