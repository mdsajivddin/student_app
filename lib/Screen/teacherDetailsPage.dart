import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TeacherDetailsPage extends StatefulWidget {
  const TeacherDetailsPage({super.key});

  @override
  State<TeacherDetailsPage> createState() => _TeacherDetailsPageState();
}

class _TeacherDetailsPageState extends State<TeacherDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F4F9),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r),
                  ),
                  child: Image.asset(
                    "assets/t4.png",
                    width: 390.w,
                    height: 360.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: 50.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 5.w),
                    ),
                    child: Center(
                      child: ClipOval(
                        child: Image.asset(
                          "assets/t4.png",
                          width: 50.w,
                          height: 55.h,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10.w,
                  top: 10.h,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Center(
              child: Text(
                "Robert Fox",
                style: GoogleFonts.inter(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Text(
              "Math Teacher",
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF8E8E8E),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 44.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(20, 15, 33, 105),
                    borderRadius: BorderRadius.circular(9.r),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/teacher.png",
                      color: Color(0xFF8A8A8A),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.w),
                  width: 44.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(20, 15, 33, 105),
                    borderRadius: BorderRadius.circular(9.r),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.phone_in_talk_outlined,
                      color: Color(0xFF8A8A8A),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.w),
                  width: 44.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(20, 15, 33, 105),
                    borderRadius: BorderRadius.circular(9.r),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.message_outlined,
                      color: Color(0xFF8A8A8A),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Age",
                      style: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A1A1A),
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      "23",
                      style: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFA7A7A7),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 80.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gender",
                      style: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A1A1A),
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      "Female",
                      style: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFA7A7A7),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15.h,left: 17.w,right: 17.w),
              padding: EdgeInsets.only(
                top: 30.h,
                right: 30.w,
                left: 30.w,
                bottom: 30.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                color: Color(0xFFFFFFFF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "About me",
                    style: GoogleFonts.inter(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Hi, I’m Robert Fox, a dedicated Math Teacher with 8+ years of experience. I specialize in algebra, calculus, and geometry, aiming to make math fun and accessible. Outside the classroom, I enjoy solving puzzles and exploring educational innovations.",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF8B8B8B),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
