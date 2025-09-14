import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_app/Screen/customeDrawer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 55.h),
          Center(
            child: Text(
              "Setting",
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF090A0A),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24.w, right: 24.w, top: 20.h),
            width: 342.w,
            height: 80.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Color(0xFF0F2169),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Premium Membership",
                    style: GoogleFonts.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Upgrade for more features",
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFE7E7FF),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Container(
            margin: EdgeInsets.only(left: 24.w),
            child: Text(
              "Account",
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xFF090A0A),
              ),
            ),
          ),
          SizedBox(height: 30.h),
          IconBody(
            icon: Icons.person_2_outlined,
            name: "Profile",
            callBack: () {},
          ),
          SizedBox(height: 25.h),
          IconBody(icon: Icons.lock_outline, name: "Password", callBack: () {}),
          SizedBox(height: 25.h),
          IconBody(
            icon: Icons.notifications_none,
            name: "Notification",
            callBack: () {},
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 30.h),
            child: Text(
              "More",
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xFF090A0A),
              ),
            ),
          ),
          SizedBox(height: 25.h),
          IconBody(
            icon: Icons.star_border_rounded,
            name: "Rate & Review",
            callBack: () {},
          ),
          SizedBox(height: 25.h),
          IconBody(
            icon: Icons.help_outline_outlined,
            name: "Help",
            callBack: () {},
          ),
          Spacer(),
          Center(
            child: Text(
              "Log out",
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF979C9E),
              ),
            ),
          ),
          SizedBox(height: 25.h),
        ],
      ),
    );
  }
}
