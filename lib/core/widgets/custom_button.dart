import 'package:event2/core/theme/color_pallete.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final Widget? child;

  const CustomButton({super.key, this.onTap, this.backgroundColor, this.child});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return ElevatedButton(
      onPressed: onTap,

      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.symmetric(vertical: 14),
        backgroundColor: backgroundColor ?? ColorPallete.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        side: BorderSide(color: ColorPallete.primary),
      ),
      child: child,
    );
  }
}
