import 'package:aziza/models/cart.dart';
import 'package:aziza/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
@immutable
class MyStore extends VxState {
  late final  CatalogModel catalog;
  late final  CartModel cart;

  // ignore: use_key_in_widget_constructors
  MyStore({ required super.store, required super.child}) {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
