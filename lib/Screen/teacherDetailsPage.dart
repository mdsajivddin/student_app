import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                        fit: BoxFit.cover,
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
        ],
      ),
    );
  }
}
