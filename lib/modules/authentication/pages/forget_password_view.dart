import 'package:event2/core/costants/app_assets.dart';
import 'package:event2/core/theme/color_pallete.dart';
import 'package:event2/core/widgets/custom_button.dart';
import 'package:event2/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: Text("Forget Password")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              AppAssets.forgetPasswordImage,
              width: MediaQuery.sizeOf(context).width * 0.8,
            ),
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'Email',
              prefixIcon: ImageIcon(AssetImage(AppAssets.emailIcon)),
            ),
            SizedBox(height: 24),
            CustomButton(
              onTap: () {},
              backgroundColor: ColorPallete.primary,
              child: Text(
                'Reset Password',
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
