
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart%20';
import '../../../main.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      "Aziza".text.xl5.bold.color(MyApp.darkBluish).make(),
      "Trending products".text.xl2.color(MyApp.darkBluish).make()
    ]);
  }
}