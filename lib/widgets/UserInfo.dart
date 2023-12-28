import 'package:diabetes_predictor/widgets/PlusMinus_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({
    super.key,
    required this.factorDesc,
    required this.onPlussPressed,
    required this.onMinusPressed,
    required this.controller,
  });

  final String factorDesc;
  final Function onPlussPressed;
  final Function onMinusPressed;
  final TextEditingController controller;

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  bool isEditing = false;

  void _startEditing() {
    setState(() {
      isEditing = true;
      // Set your initial text here
      FocusScope.of(context).requestFocus(FocusNode());
    });
  }

  void _stopEditing() {
    setState(() {
      isEditing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          color: Color(0xffb3dbff),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                widget.factorDesc,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                _startEditing();
              },
              child: isEditing
                  ? TextField(
                      keyboardType: TextInputType.number,
                      onSubmitted: (value) {
                        _stopEditing();
                      },
                      controller: widget.controller,
                    )
                  : Text(
                      num.parse(widget.controller.text).toStringAsFixed(2),

                      //widget.number.toString(),
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PlusMinusButtons(
                  icon: Icons.add,
                  onPressed: () {
                    widget.onPlussPressed();
                  },
                ),
                PlusMinusButtons(
                  icon: Icons.remove,
                  onPressed: () {
                    widget.onMinusPressed();
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
