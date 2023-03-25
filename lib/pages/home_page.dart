// ignore_for_file: must_be_immutable

import 'package:aziza/pages/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Center(
              child: Text("Aziza",
                  style: TextStyle(
                    fontFamily: GoogleFonts.lato().fontFamily,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
            ),
          ),
          body: const Text("Hello world"),
          drawer: const Mydrawer()),
    );
  }
}
