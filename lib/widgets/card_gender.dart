import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CardGender extends StatelessWidget {
  final IconData? icon;
  final String? gender;

  const CardGender({super.key, this.icon, this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: iconMedium,
          color: Colors.lightGreenAccent,
        ),
        SizedBox(height: 8,),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            gender!,
            style:mediumTextStyle,
          ),
        )
      ],
    );
  }
}
