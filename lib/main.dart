import 'package:aziza/pages/home_page.dart';
import 'package:aziza/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(brightness: Brightness.dark),
        routes: { 
          "/": (context) => const LoginPage(),
          "/home": (context) => const HomePage(),
          "/login": (context) => const LoginPage()
        });
  }
}
