import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  final Widget? cardChild;
  final Function()? onPressed;
  final Color? color;

 const ResuableCard({super.key,this.onPressed,this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
          child: Container(
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color:color, // color change korar jonno aigola use korte hoi //
          borderRadius: BorderRadius.circular(10),
        ),
            child: cardChild,
      ),
      ),
    );
  }
}
