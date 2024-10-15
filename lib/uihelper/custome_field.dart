import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final int maxLines;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final IconData? prefixIcon; // Optional prefix icon
  final IconData? suffixIcon; // Optional suffix icon
  final VoidCallback? onTapSuffixIcon; // Callback for suffix icon tap

  const CustomTextField({
    Key? key,
    this.hintText,
    this.controller,
    this.keyboardType = TextInputType.text, // Default value
    this.obscureText = false, // Default value
    this.maxLines = 1, // Default value
    this.onChanged,
    this.validator,
    this.prefixIcon, // Accept prefix icon as a parameter
    this.suffixIcon, // Accept suffix icon as a parameter
    this.onTapSuffixIcon, // Accept onTap callback for the suffix icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText ?? '',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon)
            : null, // Optional prefix icon
        suffixIcon: suffixIcon != null
            ? IconButton(
                icon: Icon(suffixIcon),
                onPressed: onTapSuffixIcon, // Call the function on tap
              )
            : null, // Optional suffix icon
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
