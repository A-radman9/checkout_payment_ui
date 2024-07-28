import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({
    super.key, required this.formKey, required this.autoValidateMode,
  });

  final GlobalKey<FormState> formKey;
  final AutovalidateMode autoValidateMode;
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '',cardHolderName = '',cvvCode = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: false,
          isHolderNameVisible: true,
          onCreditCardWidgetChange: (p0) {},
        ),
        CreditCardForm(
          autovalidateMode: widget.autoValidateMode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (onCreditCardModelChange) {
            cardNumber = onCreditCardModelChange.cardNumber;
            expiryDate = onCreditCardModelChange.expiryDate;
            cardHolderName = onCreditCardModelChange.cardHolderName;
            cvvCode = onCreditCardModelChange.cvvCode;
            setState(() {

            });
          },
          formKey: widget.formKey,
        )
      ],
    );
  }
}
