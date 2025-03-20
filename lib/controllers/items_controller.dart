import 'package:get/get.dart';
import 'package:nested_lists/lists.dart';
import 'package:nested_lists/models/items_model.dart';

class ItemsController extends GetxController {
  List<Item> getitems() {
    List<Item> items = [];
    for (var item in Lists.items['items']) {
      items!.add(Item.fromJson(item));
    }

    return items!;
  }
}
