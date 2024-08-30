import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget myTextForm(
    {required String labelText,
    String text = "",
    Color? color,
    TextInputType? keyboardType,
    bool obscureText = false,
    bool icon = false}) {
  return TextFormField(
    keyboardType: keyboardType,
    style: TextStyle(color: color, fontSize: 22),
    obscureText: obscureText,
    cursorColor: const Color(0xFFF8FE11),
    initialValue: text,
    decoration: InputDecoration(
      suffixIcon: icon
          ? const Icon(
              Icons.visibility_off,
              color: Colors.white,
            )
          : null,
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFF8FE11),
        ),
      ),
      labelText: labelText,
      border: const UnderlineInputBorder(),
    ),
  );
}
