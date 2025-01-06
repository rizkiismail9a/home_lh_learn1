import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_lh/home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(),
        scaffoldBackgroundColor: Colors.white),
    home: const Home(),
  ));
}
