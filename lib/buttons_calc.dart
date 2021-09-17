import 'package:flutter/material.dart';

class ButtonCalc extends StatelessWidget {
  ButtonCalc({this.onTap, this.buttonText, this.textColor});

  final onTap;
  final buttonText;
  final textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
