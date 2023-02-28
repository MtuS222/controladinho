import 'package:flutter/material.dart';

class MeuTextFormField extends StatelessWidget {
  const MeuTextFormField({
    super.key,
    this.obscureText = false,
    required this.hintText,
    required this.controller,
    required this.validator,
  });
  final bool obscureText;
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      maxLength: 15,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        focusedBorder: const OutlineInputBorder(),
      ),
    );
  }
}
