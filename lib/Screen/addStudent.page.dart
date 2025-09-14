import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:student_app/Screen/studentDirectory.page.dart';

class AddStudentPage extends StatefulWidget {
  const AddStudentPage({super.key});

  @override
  State<AddStudentPage> createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  TextEditingController dateController = TextEditingController();
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
        backgroundColor: Color(0xFFFFFFFF),
        leading: IconButton(
          style: IconButton.styleFrom(),
          onPressed: () {},
          icon: Icon(Icons.menu, color: Color(0xFF000000), size: 25.sp),
        ),
        title: Text(
          "Add Student",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 18.w, right: 18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              StudentFrom(name: "Full Name", type: TextInputType.name),
              SizedBox(height: 20.h),
              StudentFrom(name: "Father Name", type: TextInputType.name),
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
              Text(
                "Exam Date",
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
              SizedBox(height: 15.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button(0, "Reset Form", () {
                    setState(() {
                      selectIndex = 0;
                    });
                  }),
                  SizedBox(width: 10.w),
                  button(1, "Submit", () {
                    setState(() {
                      selectIndex = 1;
                    });
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => StudentDirectoryPage(),
                      ),
                    );
                  }),
                ],
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget button(index, String txt, VoidCallback callBack) {
    final isSelect = selectIndex == index;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(110.w, 35.h),
        backgroundColor: isSelect ? Color(0xFF0F2169) : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.r),
          side: BorderSide(
            color: isSelect ? Colors.transparent : Color(0xFF0F2169),
          ),
        ),
      ),
      onPressed: () {
        callBack();
      },
      child: Text(
        txt,
        style: GoogleFonts.inter(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: isSelect ? Colors.white : Color(0xFF0F2169),
        ),
      ),
    );
  }
}

class StudentFrom extends StatelessWidget {
  final String name;
  final TextInputType type;
  final int? maxLength;
  const StudentFrom({
    super.key,
    required this.name,
    required this.type,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
            letterSpacing: -1,
          ),
        ),
        SizedBox(height: 10.h),
        TextFormField(
          maxLength: 10,
          keyboardType: type,
          decoration: InputDecoration(
            counterText: "",
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
      ],
    );
  }
}
