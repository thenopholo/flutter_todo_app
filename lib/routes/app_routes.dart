import 'package:flutter/material.dart';

import '../core/ui/theme/app_theme.dart';
import '../views/home/home_page.dart';
import '../views/navigation/main_navigation.dart';

class AppRoutes extends StatelessWidget {
  const AppRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Todo App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routes: {
        '/': (_) => const MainNavigation(),
        'home': (_) => const HomePage(),
      },
    );
  }
}
