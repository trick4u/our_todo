import 'package:flutter/material.dart';


class GreenButton extends StatelessWidget {

  final Color color;
  final Function onPressed;
  final IconData icon;

  GreenButton({this.icon,this.color,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Color(0xff1ADB7A),
      child: Center(
        child: Icon(icon),
      ),
      elevation: 6.0,
      
    );
  }
}