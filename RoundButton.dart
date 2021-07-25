import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onpress});
  final IconData icon;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      shape: (CircleBorder()),
      fillColor: Color(0xFF8D8E98),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      elevation: 6.0,
      child: Icon(icon),
    );
  }
}
