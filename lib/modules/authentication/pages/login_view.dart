import 'package:event2/core/costants/app_assets.dart';
import 'package:event2/core/routes/page_routes_name.dart';
import 'package:event2/core/theme/color_pallete.dart';
import 'package:event2/core/widgets/custom_button.dart';
import 'package:event2/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, PageRoutesName.forgetPasswordVied);
                },
                child: Text(
                  "Forget Password?",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: ColorPallete.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: ColorPallete.primary,
                    decorationThickness: 2,
                  ),
                ),
              ),
            ),
            CustomButton(
              child: Text("Create Account", style: textTheme.bodyLarge),
              onTap: () {},
            ),
            SizedBox(height: 24),
            Row(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t Have Account ?",
                  style: textTheme.bodyMedium?.copyWith(
                    color: ColorPallete.black,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, PageRoutesName.registerView);
                  },
                  child: Text(
                    " Create Account",
                    style: textTheme.bodyMedium?.copyWith(
                      color: ColorPallete.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: ColorPallete.primary,
                      decorationThickness: 1.5,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(child: Divider(color: ColorPallete.primary)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "Or",
                    style: textTheme.bodyMedium?.copyWith(
                      color: ColorPallete.primary,
                    ),
                  ),
                ),

                Expanded(child: Divider(color: ColorPallete.primary)),
              ],
            ),
            SizedBox(height: 24),
            CustomButton(
              backgroundColor: Colors.transparent,
              onTap: () {},
              child: Row(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(AssetImage(AppAssets.googleIcon)),
                  Text(
                    "Login With Google",
                    style: textTheme.bodyLarge?.copyWith(
                      color: ColorPallete.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
