import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_app/Screen/addStudent.page.dart';
import 'package:student_app/Screen/chat.inbox.page.dart';
import 'package:student_app/Screen/fees.page.dart';
import 'package:student_app/Screen/teacherHome.page.dart';
import 'package:student_app/Screen/time.page.dart';

class Customedrawer extends StatefulWidget {
  const Customedrawer({super.key});

  @override
  State<Customedrawer> createState() => _CustomedrawerState();
}

class _CustomedrawerState extends State<Customedrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: Color(0xfFFFFFFF)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60.h),
          Row(
            children: [
              SizedBox(width: 20.h),
              Text(
                "EDU",
                style: GoogleFonts.urbanist(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF0F2169),
                ),
              ),
              SizedBox(width: 25.w),
              Text(
                "Smansys",
                style: GoogleFonts.urbanist(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(top: 12.h),
                child: IconButton(
                  style: IconButton.styleFrom(),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios, size: 20.sp),
                ),
              ),
              SizedBox(width: 10.w),
            ],
          ),
          SizedBox(height: 10.h),
          Divider(color: Color(0xFFDADADA)),
          SizedBox(height: 15.h),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Text(
              "Menu",
              style: GoogleFonts.inter(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xFF090A0A),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  IconBody(
                    icon: Icons.home_outlined,
                    name: "Dashboard",
                    callBack: () {},
                  ),
                  SizedBox(height: 25.h),
                  buildMethod("assets/teacher.png", "Teacher", () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => TeacherHomePage(),
                      ),
                    );
                  }),
                  SizedBox(height: 25.h),
                  buildMethod("assets/free.png", "Fees", () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => FeesPage()),
                    );
                  }),
                  SizedBox(height: 25.h),
                  IconBody(
                    icon: Icons.people_alt_outlined,
                    name: "Students",
                    callBack: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => AddStudentPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 25.h),
                  IconBody(
                    icon: Icons.calendar_month_outlined,
                    name: "Time Table",
                    callBack: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => TimePage()),
                      );
                    },
                  ),
                  SizedBox(height: 25.h),
                  IconBody(
                    icon: Icons.date_range_outlined,
                    name: "Calender",
                    callBack: () {},
                  ),
                  SizedBox(height: 25.h),
                  IconBody(
                    icon: Icons.chat_outlined,
                    name: "Message",
                    callBack: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => ChatInboxPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 25.h),
                  buildMethod("assets/exam.png", "Exam & Result", () {}),
                  SizedBox(height: 25.h),
                  buildMethod("assets/exam.png", "Exam Managment", () {}),
                  SizedBox(height: 25.h),
                  buildMethod("assets/holiday.png", "Holiday", () {}),
                  SizedBox(height: 25.h),
                  IconBody(
                    icon: Icons.settings,
                    name: "Setting",
                    callBack: () {},
                  ),
                  SizedBox(height: 50.h),
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
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMethod(String image, String name, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 25.w, right: 26.w),
        child: Row(
          children: [
            Image.asset(image),
            SizedBox(width: 14.w),
            Text(
              name,
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF000000),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF000000),
              size: 20.sp,
            ),
          ],
        ),
      ),
    );
  }
}

class IconBody extends StatelessWidget {
  final IconData icon;
  final String name;
  final VoidCallback callBack;
  const IconBody({
    super.key,
    required this.icon,
    required this.name,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callBack,
      child: Container(
        margin: EdgeInsets.only(left: 25.w, right: 26.w),
        child: Row(
          children: [
            Icon(icon, color: Color(0xFF000000), size: 28.sp),
            SizedBox(width: 14.w),
            Text(
              name,
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF000000),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF000000),
              size: 20.sp,
            ),
          ],
        ),
      ),
    );
  }
}
