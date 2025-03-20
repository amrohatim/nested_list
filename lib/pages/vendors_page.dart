import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nested_lists/controllers/vendor_controller.dart';
import 'package:nested_lists/models/vendor_model.dart';

class VendorsPage extends StatefulWidget {
  const VendorsPage({super.key});

  @override
  State<VendorsPage> createState() => _VendorsPageState();
}

class _VendorsPageState extends State<VendorsPage> {
  String page = "All";
  late Color _expanisonColor;
  @override
  void initState() {
    _expanisonColor = const Color.fromARGB(126, 243, 241, 241);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VendorController>(
      init: VendorController(),
      builder: (controller) {
        List<Vendor> vendors = controller.getvendors();
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10.w),
                InkWell(
                  onTap: () {
                    setState(() {
                      page = "All";
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: 100.w,
                        height: 50.h.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4).w,
                          color: const Color.fromARGB(75, 245, 245, 245),
                        ),
                      ),
                      Positioned(
                        left: 35.w,
                        top: 10.h,
                        child: Text(
                          "ALL",
                          style: GoogleFonts.nunito(
                            fontWeight:
                                page == "All"
                                    ? FontWeight.w900
                                    : FontWeight.w700,
                            color:
                                page == "All"
                                    ? Colors.deepPurpleAccent
                                    : Color(0xff000000),
                          ),
                        ),
                      ),

                      if (page == "All")
                        Positioned(
                          bottom: 0,
                          right: 50.w,
                          child: Text(
                            "•",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 22.sp,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(width: 10.w),

                InkWell(
                  onTap: () {
                    setState(() {
                      page = "P";
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: 100.w,
                        height: 50.h.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4).w,
                          color: const Color.fromARGB(75, 245, 245, 245),
                        ),
                      ),
                      Positioned(
                        left: 22.w,
                        top: 10.h,
                        child: Text(
                          "Sellers",
                          style: GoogleFonts.nunito(
                            fontWeight:
                                page == "P" ? FontWeight.w900 : FontWeight.w700,
                            color:
                                page == "P"
                                    ? Colors.deepPurpleAccent
                                    : Color(0xff000000),
                          ),
                        ),
                      ),

                      if (page == "P")
                        Positioned(
                          bottom: 0,
                          right: 50.w,
                          child: Text(
                            "•",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 22.sp,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(width: 5.w),

                InkWell(
                  onTap: () {
                    setState(() {
                      page = "S";
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: 149.w,
                        height: 50.h.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4).w,
                          color: const Color.fromARGB(75, 245, 245, 245),
                        ),
                      ),
                      Positioned(
                        left: 20.w,
                        top: 10.h,
                        child: Text(
                          "Services Providers",
                          style: GoogleFonts.nunito(
                            fontWeight:
                                page == "S" ? FontWeight.w900 : FontWeight.w700,
                            color:
                                page == "S"
                                    ? Colors.deepPurpleAccent
                                    : Color(0xff000000),
                          ),
                        ),
                      ),
                      if (page == "S")
                        Positioned(
                          bottom: 0,
                          right: 65.w,
                          child: Text(
                            "•",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 22.sp,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: vendors.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10).w,
                        color: _expanisonColor,
                      ),
                      child: ExpansionTile(
                        onExpansionChanged: (value) {
                          if (value == false) {
                            _expanisonColor = const Color.fromARGB(
                              126,
                              243,
                              241,
                              241,
                            );
                          } else {
                            _expanisonColor = const Color.fromARGB(
                              186,
                              216,
                              215,
                              211,
                            );
                          }
                          setState(() {});
                        },
                        childrenPadding: EdgeInsets.only(left: 10.w),
                        shape: BeveledRectangleBorder(side: BorderSide.none),
                        tilePadding: EdgeInsets.all(8).w,
                        title: Row(
                          children: [
                            Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30).w,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(vendors[index].img),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  vendors[index].vendor,
                                  style: GoogleFonts.cairo(fontSize: 18),
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 3.w,
                                        vertical: 2.h,
                                      ),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                          255,
                                          78,
                                          75,
                                          75,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(2).w,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.storage,
                                            color: Color(0xffffffff),
                                            size: 11.r,
                                          ),
                                          SizedBox(width: 2.w),
                                          Text(
                                            "180 items",
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 4.w),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 3.w,
                                        vertical: 2.h,
                                      ),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                          255,
                                          72,
                                          212,
                                          144,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(2).w,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.check_box,
                                            color: Color(0xffffffff),
                                            size: 11.r,
                                          ),
                                          SizedBox(width: 2.w),
                                          Text(
                                            "free delivery",
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6).w,
                              color: const Color.fromARGB(66, 255, 255, 255),
                            ),
                            child: ExpansionTile(
                              onExpansionChanged: (value) {},
                              childrenPadding: EdgeInsets.only(left: 10.w),
                              shape: BeveledRectangleBorder(
                                side: BorderSide(
                                  width: 0,
                                  color: Colors.transparent,
                                ),
                              ),
                              title: Text(vendors[index].array1.items[index]),
                              children: nested(vendors[index].array1.items, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  List<Widget> nested(List<String> items, int index) {
    if (index >= items.length) return [];
    return [
      ExpansionTile(
        shape: BeveledRectangleBorder(
          side: BorderSide(width: 0, color: Colors.transparent),
        ),
        title: Text(items[index]),
        children: nested(items, index + 1),
      ),
    ];
  }
}
