import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart%20';

import '../../../main.dart';
import '../../../models/cart.dart';
import '../../../models/catalog.dart';

class AddToCart extends StatefulWidget {
  final Item catalog;

  const AddToCart({super.key, required this.catalog});

  @override
  State<AddToCart> createState() => AddtoCartState();
}

class AddtoCartState extends State<AddToCart> {
  final cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = cart.items.contains(widget.catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          isInCart = isInCart.toggle();
          // ignore: no_leading_underscores_for_local_identifiers
          final _catalog = CatalogModel();
          cart.catalog = _catalog;
          cart.add(widget.catalog);
          setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(MyApp.darkBluish),
          shape: MaterialStateProperty.all(
            const StadiumBorder(),
          )),
      child: isInCart
          ? const Icon(Icons.done)
          : const Icon(CupertinoIcons.cart_fill_badge_plus),
    );
  }
}
