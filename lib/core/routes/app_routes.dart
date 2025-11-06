import 'package:event2/modules/authentication/pages/login_view.dart';
import 'package:event2/modules/splash/pages/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:event2/core/routes/page_routes_name.dart';

abstract class AppRoutes {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case PageRoutesName.initialRoute:
        return MaterialPageRoute(
          builder: (_) => SplashView(),
          settings: settings,
        );

      case PageRoutesName.login:
        return MaterialPageRoute(
          builder: (_) => LoginView(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (_) => SplashView(),
          settings: settings,
        );
    }
  }
}
