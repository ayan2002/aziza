import 'package:aziza/pages/home_page.dart';
import 'package:aziza/pages/login_page.dart';
import 'package:aziza/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkBluish = const Color(0xff403b58);
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.deepPurple,
            iconTheme: const IconThemeData(color: Colors.black),
            fontFamily: GoogleFonts.poppins().fontFamily,
            appBarTheme: const AppBarTheme(color: Colors.white)),
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(brightness: Brightness.dark),
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context) => const LoginPage(),
          MyRoutes.homeRoute: (context) => const HomePage(),
          MyRoutes.loginRoute: (context) => const LoginPage()
        });
  }
}
