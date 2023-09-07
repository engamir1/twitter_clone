import 'package:flutter/material.dart';
import 'package:twitter_clone/themes/pallete.dart';

class AuthField extends StatelessWidget {
  const AuthField(
      {super.key, required this.controller, required this.hintText});
  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Pallete.greyColor),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 20),
        contentPadding: const EdgeInsets.all(22),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Pallete.blueColor,
            width: 3,
          ),
        ),
      ),
    );
  }
}
