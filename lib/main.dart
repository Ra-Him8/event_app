import 'package:event2/core/routes/app_routes.dart';
import 'package:event2/core/routes/page_routes_name.dart';
import 'package:event2/core/theme/app_theme_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Event());
}

class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: PageRoutesName.initialRoute,
      onGenerateRoute: AppRoutes.onGenerateRoutes,

      themeMode: ThemeMode.light,
      theme: AppThemeManager.lightTheme,
      darkTheme: AppThemeManager.darkTheme,
    );
  }
}
