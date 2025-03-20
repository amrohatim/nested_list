class Vendor {
  final String vendor;
  final Array1 array1;
  final String img;

  Vendor({required this.vendor, required this.array1, required this.img});

  factory Vendor.fromJson(Map<String, dynamic> json) {
    return Vendor(
      vendor: json['vendor'],
      img: json["img"],
      array1: Array1.fromJson(json['array1']),
    );
  }

  Map<String, dynamic> toJson() {
    return {'vendor': vendor, 'img': img, 'array1': array1.toJson()};
  }
}

class Array1 {
  final List<String> items;

  Array1({required this.items});

  factory Array1.fromJson(Map<String, dynamic> json) {
    return Array1(items: List<String>.from(json['items']));
  }

  Map<String, dynamic> toJson() {
    return {'items': items};
  }
}
