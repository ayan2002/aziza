import 'package:flutter/material.dart';

// ignore: camel_case_types
class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Aziza"),
          ),
          body: const Text("Hello world"),
          drawer: const Drawer()),
    );
  }
}
