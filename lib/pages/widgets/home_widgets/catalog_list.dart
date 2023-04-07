import 'package:aziza/models/cart.dart';
import 'package:aziza/pages/home_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart%20';
import '../../../main.dart';
import '../../../models/catalog.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailPage(
                          catalog: catalog,
                        ))),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(tag: catalog.id, child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(MyApp.darkBluish).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                _AddtoCart(catalog: catalog)
              ],
            ).pOnly(right: 0.0)
          ],
        ))
      ],
    )).white.rounded.square(150).make().py16();
  }
}

class _AddtoCart extends StatefulWidget {
  final Item catalog;

  const _AddtoCart({required this.catalog});

  @override
  State<_AddtoCart> createState() => AddtoCartState();
}

class AddtoCartState extends State<_AddtoCart> {
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
