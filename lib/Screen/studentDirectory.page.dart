import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_app/Screen/studentDetails.page.dart';

class StudentDirectoryPage extends StatefulWidget {
  const StudentDirectoryPage({super.key});

  @override
  State<StudentDirectoryPage> createState() => _StudentDirectoryPageState();
}

class _StudentDirectoryPageState extends State<StudentDirectoryPage> {
  List<Map<String, dynamic>> myList = [
    {"imageUrl": "assets/l1.png", "name": "Eneh Mercy"},
    {"imageUrl": "assets/l2.png", "name": "Victoria Hanson"},
    {"imageUrl": "assets/l3.png", "name": "Robert Fox"},
    {"imageUrl": "assets/l4.png", "name": "Cody Fisher"},
    {"imageUrl": "assets/l1.png", "name": "Eneh Mercy"},
    {"imageUrl": "assets/l2.png", "name": "Victoria Hanson"},
    {"imageUrl": "assets/l3.png", "name": "Robert Fox"},
    {"imageUrl": "assets/l4.png", "name": "Cody Fisher"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        leading: IconButton(
          style: IconButton.styleFrom(),
          onPressed: () {
            //scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(Icons.menu, color: Color(0xFF000000), size: 25.sp),
        ),
        title: Text(
          "Student Directory",
          style: GoogleFonts.inter(
            fontSize: 25.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFF000000),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20.w),
            width: 42.w,
            height: 42.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
              image: DecorationImage(image: AssetImage("assets/Profile.png")),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 18.w, right: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 14.w,
                        right: 14.w,
                        top: 10.h,
                        bottom: 10.h,
                      ),
                      filled: true,
                      fillColor: Color(0xFFEBEAEF),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(Icons.search, color: Color(0xFF8E8D93)),
                      hintText: "Search",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8E8D93),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.w),
                  width: 46.w,
                  height: 46.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Color(0xFF1A202A),
                  ),
                  child: Center(
                    child: Icon(Icons.filter_list, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Text(
              "List",
              style: GoogleFonts.inter(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(height: 10.h),
            Divider(color: Color(0xFFE9E9E9)),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => StudentDetailsPage(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 45.w,
                                height: 45.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    myList[index]['imageUrl'].toString(),
                                  ),
                                ),
                              ),
                              SizedBox(width: 12.w),
                              Text(
                                // "Eneh Mercy",
                                myList[index]['name'].toString(),
                                style: GoogleFonts.inter(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF090A0A),
                                ),
                              ),
                              Spacer(),
                              SizedBox(
                                width: 50.w,
                                height: 30.h,
                                child: PopupMenuButton(
                                  padding: EdgeInsets.zero,
                                  icon: Icon(Icons.more_horiz),
                                  constraints: BoxConstraints(
                                    minWidth: 10,
                                    minHeight: 10,
                                  ),
                                  itemBuilder:
                                      (context) => [
                                        PopupMenuItem(child: Text("Option 1")),
                                        PopupMenuItem(child: Text("data")),
                                      ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Divider(color: Color(0xFFE9E9E9)),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
