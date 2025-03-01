import 'package:flutter/material.dart';

class AppGradient {
  static final blueGradient = LinearGradient(
    colors: [
      Color(0xFF2879E4),
      Color(0xFF2879E4).withAlpha(80),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    );
  static final darkGradient = LinearGradient(
    colors: [
      Color(0xFF262626),
      Color(0xFF262626).withAlpha(80),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    );
}