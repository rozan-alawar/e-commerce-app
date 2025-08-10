import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF6366F1);
  static const Color primaryLight = Color(0xFF8B5CF6);
  static const Color primaryDark = Color(0xFF4F46E5);

  static const Color background = Color(0xFFF8FAFC);
  static const Color cardBackground = Color(0xFFFFFFFF);
  static const Color surfaceLight = Color(0xFFF1F5F9);

  static const Color textPrimary = Color(0xFF1E293B);
  static const Color textSecondary = Color(0xFF64748B);
  static const Color textLight = Color(0xFF94A3B8);
  static const Color textWhite = Color(0xFFFFFFFF);

  static const Color orange = Color(0xFFEF4444);
  static const Color success = Color(0xFF10B981);
  static const Color warning = Color(0xFFEAB308);

  static const Color star = Color(0xFFFBBF24);
  static const Color starEmpty = Color(0xFFE5E7EB);

  static const Color border = Color(0xFFB2BACD);
  static const Color divider = Color(0xFFF1F5F9);

  static const Color iconPrimary = Color(0xFF64748B);
  static const Color iconSecondary = Color(0xFF94A3B8);
  static const Color iconWhite = Color(0xFFFFFFFF);

  static const Color online = Color(0xFF10B981);
  static const Color offline = Color(0xFF94A3B8);

  static const Color inputBackground = Color(0xFFF8FAFC);
  static const Color inputBorder = Color(0xFFE2E8F0);

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [Color(0xFF9CB9DD), Color.fromARGB(255, 255, 255, 255)],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  );

  static const LinearGradient headerGradient = LinearGradient(
    colors: [
      Color(0xFF9CB9DD),
      Color.fromARGB(255, 220, 231, 245),
      Color.fromARGB(255, 255, 255, 255),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const Color shadowLight = Color(0x10000000);
  static const Color shadowMedium = Color(0x20000000);
}
