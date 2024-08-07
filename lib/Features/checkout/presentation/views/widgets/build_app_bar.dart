import 'package:checkout_payment_ui/core/utils/app_style.dart';
import 'package:checkout_payment_ui/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar buildAppBar({ String? title}) {
  return AppBar(
    forceMaterialTransparency: true,
    leading: Center(child: SvgPicture.asset(Assets.imagesArrow),),
    title: Text(
      title??'',
      style: AppStyle.styleMedium25,
    ),
    centerTitle: true,
  );
}
