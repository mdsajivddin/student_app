import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_app/Screen/bottomNavBar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        automaticallyImplyLeading: false,
        titleSpacing: 0, // 🔹 Default space hata dega
        title: Row(
          children: [
            SizedBox(width: 17.w),
            IconButton(
              style: IconButton.styleFrom(
                minimumSize: Size(0, 0),
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF000000),
                size: 24.sp,
              ),
            ),
            SizedBox(width: 6.w),
            Text(
              "Login",
              style: GoogleFonts.inter(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 35.h),
            Center(
              child: Text(
                "Login",
                style: GoogleFonts.inter(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                  letterSpacing: -0.55,
                ),
              ),
            ),
            SizedBox(height: 35.h),
            Text(
              "Username/Email:",
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF000000),
                letterSpacing: -1,
              ),
            ),
            SizedBox(height: 10.h),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  left: 15.w,
                  right: 15.w,
                  top: 10.h,
                  bottom: 10.h,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide(color: Color(0xFF000000), width: 0.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide(color: Color(0xFF000000), width: 0.5),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide(color: Color(0xFF000000), width: 0.5),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide(color: Color(0xFF000000), width: 0.5),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Text(
              "Password:",
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF000000),
                letterSpacing: -1,
              ),
            ),
            SizedBox(height: 10.h),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  left: 15.w,
                  right: 15.w,
                  top: 10.h,
                  bottom: 10.h,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide(color: Color(0xFF000000), width: 0.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide(color: Color(0xFF000000), width: 0.5),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide(color: Color(0xFF000000), width: 0.5),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide(color: Color(0xFF000000), width: 0.5),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              children: [
                Text(
                  "Login as:",
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF000000),
                    letterSpacing: -0.1,
                  ),
                ),
                SizedBox(width: 30.h),
                Container(
                  width: 90.w,
                  height: 28.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(color: Color(0xFF000000), width: 1.w),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Admin",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(width: 1.9.w),
                      Icon(Icons.keyboard_arrow_down, color: Color(0xFF000000)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(358.w, 44.h),
                backgroundColor: Color(0xFF0F2169),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.r),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => BottomNavBar()),
                );
              },
              child: Text(
                "Login",
                style: GoogleFonts.inter(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF),
                  letterSpacing: -0.55,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
