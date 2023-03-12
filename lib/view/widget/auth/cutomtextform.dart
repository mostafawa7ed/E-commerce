import 'package:flutter/material.dart';

class CutomTextForm extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController textEditingController;
  final bool obscureText;

  const CutomTextForm({
    super.key,
    required this.hinttext,
    required this.labeltext,
    required this.iconData,
    required this.textEditingController,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: TextFormField(
        obscureText: obscureText,
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hinttext,
          helperStyle: const TextStyle(fontSize: 8),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 7),
            child: Text(
              "$labeltext",
            ),
          ),
          suffixIcon: Icon(iconData),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        ),
      ),
    );
  }
}
