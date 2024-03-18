import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonTitle, this.buttonColor});
  final String buttonTitle;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: buttonColor ?? Colors.blue,
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        buttonTitle,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
