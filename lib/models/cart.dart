import 'package:aziza/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel.internal();
  CartModel.internal();
  factory CartModel() => cartModel;
  //catalog field
  late CatalogModel catalog;
  //collection of id
  final List<int> _itemIds = [];

  List<Item> get items => _itemIds.map((id) => catalog.getById(id)).toList();

//get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
