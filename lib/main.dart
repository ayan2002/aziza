import 'package:aziza/pages/cart_page.dart';
import 'package:aziza/pages/home_page.dart';
import 'package:aziza/pages/login_page.dart';
import 'package:aziza/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkBluish = const Color(0xff403b58);
  static Color lightBluish = Vx.indigo500;
  static Color darkCreamColor = Vx.gray900;
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            cardColor: (Colors.white),
            canvasColor: MyApp.creamColor,
            // ignore: deprecated_member_use
            buttonColor: darkBluish,
            iconTheme: const IconThemeData(color: Colors.black),
            fontFamily: GoogleFonts.poppins().fontFamily,
            appBarTheme: const AppBarTheme(color: Colors.white)),
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(
            cardColor: (Colors.black),
            canvasColor: MyApp.darkCreamColor,
            // ignore: deprecated_member_use
            buttonColor: lightBluish,
            iconTheme: const IconThemeData(color: Colors.black),
            fontFamily: GoogleFonts.poppins().fontFamily,
            appBarTheme: const AppBarTheme(color: Colors.white)),
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context) => const LoginPage(),
          MyRoutes.homeRoute: (context) => const HomePage(),
          MyRoutes.loginRoute: (context) => const LoginPage(),
          MyRoutes.cartRoute: (context) => const CartPage()
        });
  }
}
