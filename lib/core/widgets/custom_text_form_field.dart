import 'package:flutter/material.dart';
import '../theme/color_pallete.dart';

class CustomTextFormField extends StatefulWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final bool isPassword;

  const CustomTextFormField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.controller,
    this.onChanged,
    this.onFieldSubmitted,
    this.isPassword = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword ? obscureText : false,
      onChanged: widget.onChanged,
      controller: widget.controller,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword ? GestureDetector(
          onTap: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          child: obscureText
              ? Icon(Icons.visibility_off, color: ColorPallete.grey)
              : Icon(Icons.visibility_outlined, color: ColorPallete.grey),

        ):null,
        prefixIcon: widget.prefixIcon,
        hintText: widget.hintText,
        hintStyle: TextStyle(fontWeight: FontWeight.w500, color: ColorPallete.grey, fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(width: 1, color: ColorPallete.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(width: 1.5, color: ColorPallete.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(width: 1.5, color: ColorPallete.grey),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(width: 1.5, color: ColorPallete.red),
        ),
      ),
    );
  }
}
