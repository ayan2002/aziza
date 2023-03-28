
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart%20';

import '../../../main.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(MyApp.creamColor).make().p16().w40(context);
  }
}