import 'package:bokklyapp/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundcolor,
      required this.textcolor,
      required this.borderRadius,
      required this.text});
  final String text;
  final Color backgroundcolor;
  final Color textcolor;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              backgroundColor: backgroundcolor),
          child: Text(
            text,
            style: Styles.textStyle16.copyWith(color: textcolor),
          )),
    );
  }
}
