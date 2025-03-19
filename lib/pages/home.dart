import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nested_lists/controllers/ui_controllers.dart';
import 'package:nested_lists/pages/items_page.dart';
import 'package:nested_lists/pages/vendors_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color iconColor = const Color.fromARGB(172, 0, 0, 0);
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color(0xffffffff),
        foregroundColor: Colors.deepPurple,
        title: Center(
          child: Text(
            "Home",
            style: GoogleFonts.nunito(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: GetBuilder<UiController>(
        builder: (controller) {
          return Column(
            children: [
              SizedBox(height: 20.h),
              Center(
                child: Row(
                  children: [
                    SizedBox(width: 20.w),
                    Container(
                      height: 45.h,
                      width: 250.w,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(126, 243, 241, 241),
                        borderRadius: BorderRadius.circular(4).w,
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10.w),
                          Icon(CupertinoIcons.search, color: iconColor),
                          Expanded(
                            child: TextFormField(
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  iconColor = Colors.deepPurple;
                                } else {
                                  iconColor = const Color.fromARGB(
                                    172,
                                    0,
                                    0,
                                    0,
                                  );
                                }
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search...',
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10.w,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Container(
                      height: 45.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 111, 164, 255),
                        borderRadius: BorderRadius.circular(4).w,
                      ),
                      child: Image.asset(
                        "assets/images/sorting.png",
                        scale: 19.r,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Container(
                      height: 45.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(230, 243, 241, 241),
                        borderRadius: BorderRadius.circular(4).w,
                      ),
                      child: Image.asset(
                        "assets/images/Filter.png",
                        scale: 23.r,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(113, 245, 245, 245),
                      borderRadius: BorderRadius.circular(6).w,
                      border: Border.all(
                        color: const Color.fromARGB(61, 11, 9, 14),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(
                          value: true,
                          groupValue: controller.isvendor,
                          onChanged: (v) {
                            controller.isvendor = v as bool;
                            pageController.previousPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                        ),
                        Text(
                          "Vendors",
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(113, 245, 245, 245),
                      borderRadius: BorderRadius.circular(6).w,
                      border: Border.all(
                        color: const Color.fromARGB(61, 11, 9, 14),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(
                          value: false,
                          groupValue: controller.isvendor,
                          onChanged: (v) {
                            controller.isvendor = v as bool;
                            pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                        ),
                        Text(
                          "Items",
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Expanded(
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  children: [VendorsPage(), ItemsPage()],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
