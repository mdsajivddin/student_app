import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:student_app/Screen/addStudent.page.dart';
import 'package:student_app/Screen/attendanceDetails.page.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  TextEditingController dateController = TextEditingController();
  String? _selectedOption;

  String? selectedClass, selectGender;

  final List<String> classList = [
    "Class 1",
    "Class 2",
    "Class 3",
    "Class 4",
    "Class 5",
    "Class 6",
    "Class 7",
    "Class 8",
    "Class 9",
    "Class 10",
    "Class 11",
    "Class 12",
  ];

  final List<String> genderList = ["Male", "Female", "Other"];

  DateTime? selectedDate;

  Future<void> pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
        dateController.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFFFFFF),
        leading: IconButton(
          style: IconButton.styleFrom(),
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
          "Mark Attendance",
          style: GoogleFonts.inter(
            fontSize: 26.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFF000000),
          ),
        ),
        centerTitle: false,
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
              StudentFrom(name: "Student Name", type: TextInputType.name),
              SizedBox(height: 20.h),
              Text(
                "Class",
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                  letterSpacing: -1,
                ),
              ),
              SizedBox(height: 10.h),
              DropdownButtonFormField(
                icon: Icon(Icons.keyboard_arrow_down_rounded),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    left: 10.w,
                    right: 10.w,
                    top: 12.h,
                    bottom: 12.h,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: BorderSide(
                      color: Color.fromARGB(178, 0, 0, 0),
                      width: 0.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: BorderSide(
                      color: Color.fromARGB(178, 0, 0, 0),
                      width: 0.5,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: BorderSide(
                      color: Color.fromARGB(178, 0, 0, 0),
                      width: 0.5,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: BorderSide(
                      color: Color.fromARGB(178, 0, 0, 0),
                      width: 0.5,
                    ),
                  ),
                ),
                items:
                    classList.map((cls) {
                      return DropdownMenuItem(value: cls, child: Text(cls));
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedClass = value;
                  });
                },
              ),
              SizedBox(height: 20.h),
              StudentFrom(name: "Select Section", type: TextInputType.name),
              SizedBox(height: 20.h),
              Text(
                "Gender",
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                  letterSpacing: -1,
                ),
              ),
              SizedBox(height: 10.h),
              DropdownButtonFormField(
                icon: Icon(Icons.keyboard_arrow_down_rounded),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    left: 10.w,
                    right: 10.w,
                    top: 12.h,
                    bottom: 12.h,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: BorderSide(
                      color: Color.fromARGB(178, 0, 0, 0),
                      width: 0.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: BorderSide(
                      color: Color.fromARGB(178, 0, 0, 0),
                      width: 0.5,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: BorderSide(
                      color: Color.fromARGB(178, 0, 0, 0),
                      width: 0.5,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: BorderSide(
                      color: Color.fromARGB(178, 0, 0, 0),
                      width: 0.5,
                    ),
                  ),
                ),
                items:
                    genderList.map((gender) {
                      return DropdownMenuItem(
                        value: gender,
                        child: Text(gender),
                      );
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectGender = value;
                  });
                },
              ),
              SizedBox(height: 20.h),
              StudentFrom(
                name: "Phone Number",
                type: TextInputType.phone,
                maxLength: 10,
              ),
              SizedBox(height: 20.h),
              Text(
                "Select Date",
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                  letterSpacing: -1,
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                controller: dateController,
                readOnly: true,
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                    onTap: () {
                      pickDate();
                    },
                    child: Icon(Icons.date_range_outlined),
                  ),
                  contentPadding: EdgeInsets.only(
                    left: 10.w,
                    right: 10.w,
                    top: 12.h,
                    bottom: 12.h,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: BorderSide(
                      color: Color.fromARGB(178, 0, 0, 0),
                      width: 0.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: BorderSide(
                      color: Color.fromARGB(178, 0, 0, 0),
                      width: 0.5,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: BorderSide(
                      color: Color.fromARGB(178, 0, 0, 0),
                      width: 0.5,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: BorderSide(
                      color: Color.fromARGB(178, 0, 0, 0),
                      width: 0.5,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  button("ABSENT"),
                  button("PRESENT"),
                  button("LEAVE"),
                ],
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(120.w, 42.h),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        side: BorderSide(color: Color(0xFF0F2169)),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Reset Form",
                      style: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF0F2169),
                        letterSpacing: -0.5,
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(120.w, 42.h),
                      backgroundColor: Color(0xFF0F2169),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        side: BorderSide(color: Colors.transparent),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => AttendanceDetailsPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Submit",
                      style: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.5,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget button(String txt) {
    return Row(
      children: [
        Radio<String>(
          value: txt,
          groupValue: _selectedOption,
          onChanged: (value) {
            setState(() {
              _selectedOption = value!;
            });
          },
          activeColor: Color(0xFF23A711),
        ),
        Text(
          txt,
          style: GoogleFonts.inter(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
          ),
        ),
      ],
    );
  }
}
