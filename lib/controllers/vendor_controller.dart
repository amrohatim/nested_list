import 'package:get/get.dart';
import 'package:nested_lists/lists.dart';
import 'package:nested_lists/models/vendor_model.dart';

class VendorController extends GetxController {
  List<Vendor> getvendors() {
    List<Vendor> vendors = [];
    for (var vendor in Lists.vendors['vendors']) {
      vendors.add(Vendor.fromJson(vendor));
    }
    return vendors;
  }
}
