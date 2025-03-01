import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
import 'app_gradient.dart';

class AppTheme{
  // Singleton pattern para acesso global
  static final AppTheme _instance = AppTheme._internal();

  factory AppTheme() {
    return _instance;
  }

  AppTheme._internal();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primaryColor,
        onPrimary: Colors.white,
        secondary: AppColors.secondaryColor,
        onSecondary: Colors.white,
        tertiary: AppColors.tertiaryColor,
        onTertiary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.white,
        onSurface: AppColors.tertiaryColor,
      ),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.poppins(fontSize: 28.0, fontWeight: FontWeight.bold, color: AppColors.tertiaryColor),
        displayMedium: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.bold, color: AppColors.tertiaryColor),
        displaySmall: GoogleFonts.poppins(fontSize: 20.0, fontWeight: FontWeight.bold, color: AppColors.tertiaryColor),
        headlineMedium: GoogleFonts.poppins(fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColors.tertiaryColor),
        titleLarge: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600, color: AppColors.tertiaryColor),
        bodyLarge: GoogleFonts.poppins(fontSize: 16.0, color: AppColors.tertiaryColor),
        bodyMedium: GoogleFonts.poppins(fontSize: 14.0, color: AppColors.tertiaryColor),
        bodySmall: GoogleFonts.poppins(fontSize: 12.0, color: AppColors.secondaryColor),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.primaryColor, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.secondaryColor),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
      cardTheme: CardTheme(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.secondaryColor,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.primaryColor,
        onPrimary: Colors.white,
        secondary: AppColors.secondaryColor,
        onSecondary: Colors.white,
        tertiary: AppColors.tertiaryColor,
        onTertiary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: const Color(0xFF1E1E1E),
        onSurface: Colors.white,
      ),
      scaffoldBackgroundColor: AppColors.tertiaryColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.tertiaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.poppins(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white),
        displayMedium: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
        displaySmall: GoogleFonts.poppins(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
        headlineMedium: GoogleFonts.poppins(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),
        titleLarge: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
        bodyLarge: GoogleFonts.poppins(fontSize: 16.0, color: Colors.white),
        bodyMedium: GoogleFonts.poppins(fontSize: 14.0, color: Colors.white),
        bodySmall: GoogleFonts.poppins(fontSize: 12.0, color: AppColors.secondaryColor),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
      cardTheme: CardTheme(
        color: const Color(0xFF1E1E1E),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.tertiaryColor,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.secondaryColor,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),
    );
  }

  // Métodos auxiliares para acessar gradientes em outros lugares do app
  static LinearGradient get blueGradient => AppGradient.blueGradient;
  static LinearGradient get darkGradient => AppGradient.darkGradient;
  
  // Método helper para criar botões com gradiente
  static Decoration gradientButtonDecoration({bool isDark = false}) {
    return BoxDecoration(
      gradient: isDark ? AppGradient.darkGradient : AppGradient.blueGradient,
      borderRadius: BorderRadius.circular(8),
    );
  }
  
  // Método helper para criar containers com gradiente
  static BoxDecoration gradientBoxDecoration({bool isDark = false, BorderRadius? borderRadius}) {
    return BoxDecoration(
      gradient: isDark ? AppGradient.darkGradient : AppGradient.blueGradient,
      borderRadius: borderRadius ?? BorderRadius.circular(12),
    );
  }
}