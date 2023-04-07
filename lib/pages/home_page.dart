// ignore_for_file: must_be_immutable

import 'package:aziza/main.dart';
import 'package:aziza/models/catalog.dart';
import 'package:aziza/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'widgets/home_widgets/catalog_header.dart';
import 'widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loaddata();
  }

  loaddata() async {
    await Future.delayed(const Duration(seconds: 0));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalogue.json");
    final decodeJson = jsonDecode(catalogJson);
    var productData = decodeJson["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    setState(() {});
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.cartRoute);
            },
            backgroundColor: MyApp.darkBluish,
            child: const Icon(CupertinoIcons.cart),
          ),
          backgroundColor: MyApp.creamColor,
          body: SafeArea(
            child: Container(
              padding: Vx.m32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CatalogHeader(),
                  if (CatalogModel.items.isNotEmpty)
                    const CatalogList().expand()
                  else
                    const CircularProgressIndicator().centered().expand(),
                ],
              ),
            ),
          ),
        ));
  }
}
