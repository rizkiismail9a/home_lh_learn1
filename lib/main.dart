import 'package:flutter/material.dart';
import 'package:home_lh/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(),
        scaffoldBackgroundColor: Colors.white),
    home: const Home(),
  ));
}
