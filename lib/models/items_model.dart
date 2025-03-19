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
    return {'item': Item, 'img': img, "array1": array1.toJson()};
  }
}

class Array1 {
  final String name;
  final Array2 array2;

  Array1({required this.name, required this.array2});

  factory Array1.fromJson(Map<String, dynamic> json) {
    return Array1(name: json['name'], array2: Array2.fromJson(json['array2']));
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'array2': array2.toJson()};
  }
}

class Array2 {
  final String name;
  final Array3 array3;

  Array2({required this.name, required this.array3});

  factory Array2.fromJson(Map<String, dynamic> json) {
    return Array2(name: json['name'], array3: Array3.fromJson(json['array3']));
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'array3': array3.toJson()};
  }
}

class Array3 {
  final String name;
  final Array4 array4;

  Array3({required this.name, required this.array4});

  factory Array3.fromJson(Map<String, dynamic> json) {
    return Array3(name: json['name'], array4: Array4.fromJson(json['array4']));
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'array4': array4.toJson()};
  }
}

class Array4 {
  final String name;

  Array4({required this.name});

  factory Array4.fromJson(Map<String, dynamic> json) {
    return Array4(name: json['name']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name};
  }
}
