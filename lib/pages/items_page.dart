import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nested_lists/controllers/items_controller.dart';
import 'package:nested_lists/models/items_model.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({super.key});

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  String page = "All";
  late Color _expanisonColor;
  @override
  void initState() {
    _expanisonColor = const Color.fromARGB(126, 243, 241, 241);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemsController>(
      init: ItemsController(),
      builder: (controller) {
        List<Item> items = controller.getitems();
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
                        height: 50.h,
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
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4).w,
                          color: const Color.fromARGB(75, 245, 245, 245),
                        ),
                      ),
                      Positioned(
                        left: 22.w,
                        top: 10.h,
                        child: Text(
                          "Products",
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
                          right: 45.w,
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
                        width: 112.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4).w,
                          color: const Color.fromARGB(75, 245, 245, 245),
                        ),
                      ),
                      Positioned(
                        left: 20.w,
                        top: 10.h,
                        child: Text(
                          "Services",
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
                          right: 55.w,
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
                itemCount: items.length,
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
                                  image: AssetImage(items[index].img),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  items[index].item,
                                  style: GoogleFonts.cairo(fontSize: 18),
                                ),
                                Text(
                                  items[index].subtitle,
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.grey.shade600,
                                    fontSize: 12.sp,
                                  ),
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
                              title: Text(items[index].array1.name),
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6).w,
                                    color: const Color.fromARGB(
                                      116,
                                      255,
                                      255,
                                      255,
                                    ),
                                  ),
                                  child: ExpansionTile(
                                    childrenPadding: EdgeInsets.only(
                                      left: 10.w,
                                    ),
                                    shape: BeveledRectangleBorder(
                                      side: BorderSide(
                                        width: 0,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    title: Text(
                                      items[index].array1.array2.name,
                                    ),
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6).w,
                                          color: const Color.fromARGB(
                                            135,
                                            255,
                                            255,
                                            255,
                                          ),
                                        ),
                                        child: ExpansionTile(
                                          childrenPadding: EdgeInsets.only(
                                            left: 10.w,
                                          ),
                                          shape: BeveledRectangleBorder(
                                            side: BorderSide.none,
                                          ),
                                          title: Text(
                                            items[index]
                                                .array1
                                                .array2
                                                .array3
                                                .name,
                                          ),
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6).w,
                                                color: const Color.fromARGB(
                                                  255,
                                                  255,
                                                  255,
                                                  255,
                                                ),
                                              ),
                                              child: ExpansionTile(
                                                shape: BeveledRectangleBorder(
                                                  side: BorderSide(
                                                    width: 0,
                                                    color: Colors.transparent,
                                                  ),
                                                ),
                                                title: Text(
                                                  items[index]
                                                      .array1
                                                      .array2
                                                      .array3
                                                      .array4
                                                      .name,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
}
