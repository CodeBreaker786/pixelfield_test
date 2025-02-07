import 'package:flutter/material.dart';
import 'package:pixelfield_test/core/app_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,  
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      
    ), 
    cardColor: AppColors.background,
    cardTheme: CardTheme(
      color: AppColors.background,
    ),
    textTheme: TextTheme(
      headlineLarge: AppFonts.title,  
      bodyLarge: AppFonts.body, 
      bodyMedium: AppFonts.body,
      labelLarge: AppFonts.button,  
     
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondary,
        textStyle: AppFonts.button,
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      ),
    ),
  );
}
