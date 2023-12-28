import 'package:flutter/material.dart';

class PlusMinusButtons extends StatelessWidget {
  const PlusMinusButtons({
    super.key,
    required this.onPressed,
    required this.icon,
  });
  final Function onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xffff646e),
      heroTag: null,
      onPressed: () {
        onPressed();
      },
      mini: true,
      child: Icon(icon),
    );
  }
}
