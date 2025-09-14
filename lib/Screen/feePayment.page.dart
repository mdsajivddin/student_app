import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_app/Screen/attendance.page.dart';

class FeePaymentPage extends StatefulWidget {
  const FeePaymentPage({super.key});

  @override
  State<FeePaymentPage> createState() => _FeePaymentPageState();
}

class _FeePaymentPageState extends State<FeePaymentPage> {
  int _selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F4F9),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFF5F4F9),
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
          "Customize Fee Payment",
          style: GoogleFonts.inter(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: Color(0xFF000000),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 18.w, right: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            Divider(color: Color(0xFFE1E1E1), endIndent: 20, indent: 20),
            SizedBox(height: 25.h),
            Text(
              "Select A Payment Options",
              style: GoogleFonts.inter(
                fontSize: 22.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedOption = 0;
                });
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => AttendancePage()),
                );
              },
              child: paymentMethod(0, 'Pay in Full', '₹80,000'),
            ),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedOption = 1;
                });
              },
              child: paymentMethod(1, 'Pay in Two Halves', "₹40,000"),
            ),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedOption = 2;
                });
              },
              child: paymentMethod(2, 'Pay in Terms', '₹27,000'),
            ),
          ],
        ),
      ),
    );
  }

  Widget paymentMethod(int index, String name, String ammount) {
    return Container(
      padding: EdgeInsets.only(
        left: 10.w,
        right: 10.w,
        top: 10.h,
        bottom: 10.h,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Radio<int>(
            value: index,
            groupValue: _selectedOption,
            onChanged: (value) {
              setState(() {
                _selectedOption = value!;
              });
            },
            activeColor: Color(0xFF017DFE),
          ),
          SizedBox(width: 4.w),
          Expanded(
            child: Text(
              name,
              style: GoogleFonts.inter(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000),
              ),
            ),
          ),
          Text(
            ammount,
            style: GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFF838383),
            ),
          ),
        ],
      ),
    );
  }
}
