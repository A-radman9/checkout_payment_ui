
import 'package:flutter/material.dart';

class ThankYouStatusLogo extends StatelessWidget {
  const ThankYouStatusLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      left: 0,
      right: 0,
      top: -50,
      child: CircleAvatar(
        backgroundColor: Color(0xFFEDEDED),
        radius: 50,
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Color(0xFF34A853),
          child: Icon(Icons.check,size: 60,color: Colors.white,),
        ),
      ),
    );
  }
}
