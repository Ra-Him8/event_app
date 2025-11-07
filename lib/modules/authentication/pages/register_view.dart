import 'package:event2/core/routes/page_routes_name.dart';
import 'package:event2/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../core/costants/app_assets.dart';
import '../../../core/theme/color_pallete.dart';
import '../../../core/widgets/custom_text_form_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppAssets.appLogoIcon, height: 185),
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'Name',
              prefixIcon: ImageIcon(
                AssetImage(AppAssets.nameIcon),
                color: ColorPallete.grey,
              ),
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'Email',
              prefixIcon: ImageIcon(
                AssetImage(AppAssets.emailIcon),
                color: ColorPallete.grey,
              ),
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              isPassword: true,
              hintText: 'Password',
              prefixIcon: ImageIcon(
                AssetImage(AppAssets.passIcon),
                color: ColorPallete.grey,
              ),
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              isPassword: true,
              hintText: 'Re Password',
              prefixIcon: ImageIcon(
                AssetImage(AppAssets.passIcon),
                color: ColorPallete.grey,
              ),
            ),
            SizedBox(height: 16),
            CustomButton(
              onTap: () {},
              child: Text(
                "Create Account",
                style: textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Have Account ?",
                  style: textTheme.bodyMedium?.copyWith(
                    color: ColorPallete.black,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, PageRoutesName.login);
                  },
                  child: Text(
                    "Login",
                    style: textTheme.bodyMedium?.copyWith(
                      color: ColorPallete.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: ColorPallete.primary,
                      decorationThickness: 1.5
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
