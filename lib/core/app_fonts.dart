import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelfield_test/core/app_colors.dart';

class AppFonts {
  static TextStyle title = GoogleFonts.playfairDisplay(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle body = GoogleFonts.playfairDisplay(
    fontSize: 16,
    color: Colors.white70,
  );

  static TextStyle button = GoogleFonts.playfairDisplay(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static TextStyle link = GoogleFonts.cinzel(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Color(0xFFC8921C), // Mustard yellow
  );
}
