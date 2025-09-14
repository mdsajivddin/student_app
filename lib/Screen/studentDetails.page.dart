import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_app/Screen/classByStudent.page.dart';

class StudentDetailsPage extends StatefulWidget {
  const StudentDetailsPage({super.key});

  @override
  State<StudentDetailsPage> createState() => _StudentDetailsPageState();
}

class _StudentDetailsPageState extends State<StudentDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        leading: IconButton(
          style: IconButton.styleFrom(padding: EdgeInsets.only(left: 10.w)),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF000000),
            size: 25.sp,
          ),
        ),
        title: Text(
          "Student Details",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 18.w, right: 18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 70.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                      child: ClipOval(
                        child: Image.asset("assets/l1.png", fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      "Eneh Mercy",
                      style: GoogleFonts.inter(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF000000),
                      ),
                    ),
                    SizedBox(height: 15.h),
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
                  ],
                ),
              ),
              SizedBox(height: 25.h),
              buildRow("Class", "8th"),
              buildRow("Section", "B"),
              buildRow("Roll No", "15"),
              buildRow("Student Id", "STU-2025-002"),
              buildRow("Admission No", "ADM-2040"),
              buildRow("Admission Date", "15 June 2022"),
              buildRow("Date of Birth", "12 March 2010"),
              buildRow("Guardian Name", "Mr. Joseph Mercy"),
              buildRow("Email", "mercy.en@example.com"),
              buildRow("Address", "24, New Street, Lagos"),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.only(
                  top: 30.h,
                  right: 30.w,
                  left: 30.w,
                  bottom: 30.h,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  border: Border.all(color: Color(0xFF000000), width: 0.6),
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
                      "Hi, I’m Eneh Mercy, a JSS 2 student who loves learning—especially Maths and English! I enjoy reading, drawing, and joining school events. One day, I hope to become a doctor and help others.",
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8B8B8B),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(99.w, 35.h),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.r),
                        side: BorderSide(color: Color(0xFF0F2169)),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Edit Profile",
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF0F2169),
                        letterSpacing: -0.5,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(99.w, 35.h),
                      backgroundColor: Color(0xFF0F2169),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.r),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => ClassbyStudentPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Delete Student",
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 130.w,
            child: Text(
              label,
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000),
              ),
            ),
          ),
          Expanded(
            child: Text(
              ":  $value",
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
