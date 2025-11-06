import 'package:event2/core/costants/app_assets.dart';
import 'package:event2/core/routes/page_routes_name.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushNamed(context, PageRoutesName.login);
    });

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AppAssets.appLogoIcon, height: 185,),
      ),
    );
  }
}
