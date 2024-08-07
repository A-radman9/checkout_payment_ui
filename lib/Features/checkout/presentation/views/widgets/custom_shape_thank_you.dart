import 'package:flutter/material.dart';

class CustomShapeThankYou extends StatelessWidget {
  const CustomShapeThankYou({
    super.key, this.right,  this.left,
  });
  final double? right, left;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      right: right,
      bottom: MediaQuery.sizeOf(context).height * .2,
      child: const CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
  }
}