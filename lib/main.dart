import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:nested_lists/controllers/items_controller.dart';
import 'package:nested_lists/controllers/vendor_controller.dart';
import 'package:nested_lists/helper.dart';
import 'package:nested_lists/pages/home.dart';

void main() async {
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392.7, 825.5),
      builder: (context, _) {
        return GetMaterialApp(debugShowCheckedModeBanner: false, home: Home());
      },
    );
  }
}
