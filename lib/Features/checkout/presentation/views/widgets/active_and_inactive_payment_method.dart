import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveAndInActivePaymentMethod extends StatelessWidget {
  const ActiveAndInActivePaymentMethod({
    super.key, required this.isActive, required this.image,
  });

  final String image;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.50, color: isActive ? const Color(0xFF34A853) : Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color: isActive ? const Color(0xFF34A853) : Colors.white,
            blurRadius: 4,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1.50, color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
          child: SvgPicture.asset(image),
        ),
      ),
    ) ;
  }
}
// AnimatedContainer(
// duration: Duration(milliseconds: 600),
// width: 104,
// height: 62,
// decoration: ShapeDecoration(
// shape: RoundedRectangleBorder(
// side: BorderSide(
// width: 1,
// color: Colors.black.withOpacity(0.5),
// ),
// borderRadius: BorderRadius.circular(15),
// ),
// ),
// child: Center(child: SvgPicture.asset(image)),
// );