import 'package:get/instance_manager.dart';
import 'package:nested_lists/controllers/items_controller.dart';
import 'package:nested_lists/controllers/ui_controllers.dart';
import 'package:nested_lists/controllers/vendor_controller.dart';

Future<void> init() async {
  Get.lazyPut<VendorController>(() => VendorController());
  Get.lazyPut<ItemsController>(() => ItemsController());
  Get.lazyPut<UiController>(() => UiController());
}
