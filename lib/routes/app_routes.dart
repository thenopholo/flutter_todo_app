import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/ui/theme/app_theme.dart';
import '../views/home/home_page.dart';
import '../views/navigation/cubit/navigation_cubit.dart';
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
        '/': (_) => BlocProvider(
              create: (context) => NavigationCubit(),
              child: const MainNavigation(),
            ),
        'home': (_) => const HomePage(),
      },
    );
  }
}
