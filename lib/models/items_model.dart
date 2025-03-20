class Item {
  final String item;
  final Array1 array1;
  final String img;
  String subtitle;

  Item({
    required this.item,
    required this.array1,
    required this.img,
    required this.subtitle,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      item: json['item'],
      img: json['img'],
      subtitle: json['subtitle'],
      array1: Array1.fromJson(json['array1']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'item': item,
      'img': img,
      'subtitle': subtitle,
      'array1': array1.toJson(),
    };
  }
}

class Array1 {
  final List<String> items;

  Array1({required this.items});

  factory Array1.fromJson(Map<String, dynamic> json) {
    return Array1(items: List<String>.from(json['itemss']));
  }

  Map<String, dynamic> toJson() {
    return {'itemss': items};
  }
}
