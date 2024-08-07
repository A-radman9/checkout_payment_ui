import 'package:checkout_payment_ui/Features/checkout/presentation/views/thank_you_view.dart';
import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:checkout_payment_ui/Features/checkout/presentation/views/widgets/payment_method.dart';
import 'package:flutter/material.dart';

import 'custom_credit_card.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 25,
          ),
        ),
        const SliverToBoxAdapter(
          child: PaymentMethod(),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomCreditCard(
                autoValidateMode: autoValidateMode,
                formKey: formKey,
              ),
              const SizedBox(height: 35,),
            ],
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12, left: 20, right: 20),
              child: CustomButton(
                text: 'Payment',
                onPressed: (){
                  if(formKey.currentState!.validate())
                    {
                      formKey.currentState!.save();
                    }
                  else
                    {
                      autoValidateMode = AutovalidateMode.always;
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ThankYouView(),));
                      setState(() {

                      });
                    }
                },
              ),
            ),
          ),
        ),

      ]
    );
  }
}

