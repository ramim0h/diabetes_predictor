import 'package:flutter/material.dart';

class GenderButton extends StatefulWidget {
  const GenderButton({
    super.key,
    required this.isMale,
    required this.genderDesc,
    required this.icon,
    required this.onTap,
  });

  final bool isMale;
  final String genderDesc;
  final IconData icon;
  final Function() onTap;

  @override
  State<GenderButton> createState() => _GenderButtonState();
}

class _GenderButtonState extends State<GenderButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          widget.onTap();
        },
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            color: widget.isMale ? Color(0xffb3dbff) : Colors.grey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                size: 70,
              ),
              Text(
                widget.genderDesc,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
