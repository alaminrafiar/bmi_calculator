import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class custom_button extends StatelessWidget {
  final String? title;
  final Function()? onPressed;

  const custom_button({Key? key, this.title, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black,
        ),
        child: Center(
          child: Text(
            title!,
            style: mediumTextStyle,
          ),
        ),
      ),
    );
  }
}
