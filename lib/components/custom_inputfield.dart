import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField(
      {super.key, required this.inputController, required this.labelText});

  final TextEditingController inputController;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(labelText),
      const SizedBox(height: 10),
      Container(
        decoration: BoxDecoration(
            color: const Color(0xFFCCCCCC),
            borderRadius: BorderRadius.circular(10)),
        child: Column(children: [
          TextField(
            controller: inputController,
            decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 10)),
          )
        ]),
      ),
    ]);
  }
}
