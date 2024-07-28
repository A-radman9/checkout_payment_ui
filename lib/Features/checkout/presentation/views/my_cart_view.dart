import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/build_app_bar.dart';
import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/my_cart_view_body.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Cart',),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: MyCartViewBody(),
      ),
    );
  }
}
