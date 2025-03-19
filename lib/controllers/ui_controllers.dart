import 'package:get/get.dart';

class UiController extends GetxController {
  bool _isvendor = true;
  bool get isvendor => _isvendor;
  set isvendor(bool isvendor) {
    _isvendor = isvendor;
    update();
  }
}
