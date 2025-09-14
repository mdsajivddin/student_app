import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_app/Screen/teacherDetailsPage.dart';

class TeacherHomePage extends StatefulWidget {
  const TeacherHomePage({super.key});

  @override
  State<TeacherHomePage> createState() => _TeacherHomePageState();
}

class _TeacherHomePageState extends State<TeacherHomePage> {
  int filter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F4F9),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F4F9),
        leading: Container(
          width: 42.w,
          height: 42.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Color(0xFFFFFFFF),
          ),
          child: IconButton(
            style: IconButton.styleFrom(),
            onPressed: () {},
            icon: Icon(Icons.menu, color: Color(0xFF000000), size: 25.sp),
          ),
        ),
        title: Text(
          "Teachers",
          style: GoogleFonts.inter(
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Row(
            children: [
              SizedBox(width: 17.w),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      left: 14.w,
                      right: 14.w,
                      top: 12.h,
                      bottom: 12.h,
                    ),
                    filled: true,
                    fillColor: Color(0xFFEBEAEF),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.r),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.r),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Search",
                    hintStyle: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF8E8D93),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF8E8D93),
                      weight: 2.w,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 11.w),
              Container(
                width: 42.w,
                height: 42.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.r),
                  color: Color(0xFF1A202A),
                ),
                child: Center(
                  child: Icon(
                    Icons.filter_list,
                    color: Color(0xFFFFFFFF),
                    size: 22.sp,
                  ),
                ),
              ),
              SizedBox(width: 17.w),
            ],
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.only(left: 18.w, right: 18.w),
            child: Row(
              children: [
                filterbody(0, "All"),
                SizedBox(width: 10.w),
                filterbody(1, "Teaching"),
                SizedBox(width: 10.w),
                filterbody(2, "Non-Teaching"),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.only(left: 18.w, right: 18.w),
            child: GridView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.h,
                childAspectRatio: 175.w / 235.h,
              ),
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => TeacherDetailsPage(),
                          ),
                        );
                      },
                      child: Image.asset("assets/t3.png", fit: BoxFit.cover),
                    ),
                    Positioned(
                      bottom: 26.h,
                      left: 10.w,
                      child: Text(
                        "Robert Fox",
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10.h,
                      left: 10.w,
                      child: Text(
                        "Robert Fox",
                        style: GoogleFonts.inter(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget filterbody(int index, String txt) {
    final bool isSelect = filter == index;
    return InkWell(
      onTap: () {
        setState(() {
          filter = index;
        });
      },
      child: Container(
        padding: EdgeInsets.only(
          left: 15.w,
          right: 15.w,
          top: 8.h,
          bottom: 8.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26.r),
          color: isSelect ? Color(0xFF017DFE) : Color(0xFFEBEAEF),
        ),
        child: Text(
          txt,
          style: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: isSelect ? Color(0xFFFFFFFF) : Color(0xFF8A8A8A),
          ),
        ),
      ),
    );
  }
}
