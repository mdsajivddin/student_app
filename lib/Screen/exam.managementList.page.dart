import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ExamManagementListPage extends StatefulWidget {
  const ExamManagementListPage({super.key});

  @override
  State<ExamManagementListPage> createState() => _ExamManagementListPageState();
}

class _ExamManagementListPageState extends State<ExamManagementListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F4F9),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F4F9),
        leading: IconButton(
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
          "Exam Management List",
          style: GoogleFonts.inter(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: Color(0xFF000000),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              top: 6.h,
              bottom: 6.h,
            ),
            decoration: BoxDecoration(color: Color(0xFF0F2169)),
            child: Row(
              children: [
                Text(
                  "S No.",
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 25.w),
                Expanded(
                  child: Text(
                    "Exam Name",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Date",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "Action",
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                buildRow("1", "Annual Exam", "Jan 30, 2024"),
                buildRow("2", "Annual Exam", "Jan 28, 2024"),
                buildRow("3", "Annual Exam", "Jan 28, 2024"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRow(String sno, String name, String date) {
    return Container(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 18.h, bottom: 6.h),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black12)),
      ),
      child: Row(
        children: [
          SizedBox(width: 10.w),
          Expanded(
            child: Text(
              sno,
              style: GoogleFonts.inter(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF000000),
                letterSpacing: -1,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              name,
              style: GoogleFonts.inter(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF000000),
                letterSpacing: -1,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              date,
              style: GoogleFonts.inter(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF000000),
                letterSpacing: -1,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
    );
  }
}
