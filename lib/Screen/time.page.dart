import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TimePage extends StatefulWidget {
  const TimePage({super.key});

  @override
  State<TimePage> createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  int tabIndex = 0;
  List myList = [
    {
      //"color" : Color(value),
      "language": "Tamil",
      "time": "9.00AM - 9.45AM",
    },
    {
      //"color" : Color(value),
      "language": "English",
      "time": "9.45AM - 10.30AM",
    },
    {
      // "color" : Color(value),
      "language": "Break",
      "time": "10.30AM - 10.45AM",
    },
    {
      //"color": Color(value),
      "language": "Math", "time": "10.45AM - 11.30AM",
    },
    {
      //"color" : Color(value),
      "language": "Chem",
      "time": "11.30AM - 12.15PM",
    },

    {
      //  "color" : Color(value),
      "language": "Lunch",
      "time": "12.15PM - 1.00PM",
    },
    {
      //  "color" : Color(value),
      "language": "Bio",
      "time": "1.00PM - 1.45PM",
    },
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
          "Time Table",
          style: GoogleFonts.inter(
            fontSize: 28.sp,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.only(left: 18.w, right: 18.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _dayTime(0, "MON", "12"),
                _dayTime(1, "TUE", "13"),
                _dayTime(2, "WED", "14"),
                _dayTime(3, "THU", "15"),
                _dayTime(4, "FRI", "16"),
                _dayTime(5, "SAT", "17"),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: myList.length,
              itemBuilder: (context, index) {
                final data = myList[index]['language'].toString();
                Color bgColor;
                if (data.toLowerCase() == "break") {
                  bgColor = Color(0xFFFFFAE0);
                } else if (data.toLowerCase() == "lunch") {
                  bgColor = Color(0xFFEBFFF2);
                } else {
                  bgColor = Color(0xFFF5F7FF);
                }

                return Container(
                  margin: EdgeInsets.only(top: 15.h, left: 40.w, right: 40.w),
                  width: 310.w,
                  height: 66.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: bgColor,
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 20.w),
                      Text(
                        // "Tamil",
                        myList[index]['language'].toString(),
                        style: GoogleFonts.inter(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Spacer(),
                      Text(
                        // "9.45AM - 10.30AM",
                        myList[index]['time'].toString(),
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF4E4E4E),
                        ),
                      ),
                      SizedBox(width: 20.w),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }

  Widget _dayTime(int index, String day, String date) {
    final bool isSelect = tabIndex == index;
    return InkWell(
      onTap: () {
        setState(() {
          tabIndex = index;
        });
      },
      child: Container(
        width: 41.w,
        height: 59.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.r),
          color: isSelect ? Color(0xFF0F2169) : Color(0xFFEBEAEF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              day,
              style: GoogleFonts.roboto(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: isSelect ? Color(0xFFFFFFFF) : Color(0xFF6E6D71),
              ),
            ),
            Text(
              date,
              style: GoogleFonts.roboto(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: isSelect ? Color(0xFFFFFFFF) : Color(0xFF6E6D71),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
