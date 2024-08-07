import 'package:flutter/material.dart';

class CustomDashedLine extends StatelessWidget {
  const CustomDashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.sizeOf(context).height * .2 + 20,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10 + 20),
        child: Row(
          children: List.generate(30, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 6),
              child: Container(
                color: const Color(0xffB8B8B8),
                height: 2,
                width: 8,
              ),
            );
          },).toList(),
        ),
      ),
    );
  }
}