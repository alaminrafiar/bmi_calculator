import 'package:flutter/material.dart';
class Round_Icons_button extends StatelessWidget {
  final IconData?icon;
  final Function()? onPressed;
  const Round_Icons_button({Key? key,this.icon,this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed:onPressed,
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
      shape: CircleBorder(),
      fillColor: Colors.lightGreenAccent,
      child: Icon(icon),
    );
  }
}
