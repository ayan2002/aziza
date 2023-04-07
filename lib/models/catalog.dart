class CatalogModel {
  static final catModel = CatalogModel.internal();
  CatalogModel.internal();
  factory CatalogModel() => catModel;
  static List<Item> items = [];
  //get item by ID
  Item getById(int id) =>
      // ignore: null_closures
      items.firstWhere((element) => element.id == id, orElse: null);

  //get item by position
  Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        price: map["price"],
        desc: map["desc"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "price": price,
        "desc": desc,
        "color": color,
        "image": image,
      };
}
