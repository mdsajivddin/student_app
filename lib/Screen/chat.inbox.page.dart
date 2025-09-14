import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_app/Screen/chating.page.dart';

class ChatInboxPage extends StatefulWidget {
  const ChatInboxPage({super.key});

  @override
  State<ChatInboxPage> createState() => _ChatInboxPageState();
}

class _ChatInboxPageState extends State<ChatInboxPage> {
  int filter = 0;
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
          "Chats",
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
      body: Padding(
        padding: EdgeInsets.only(left: 18.w, right: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  left: 14.w,
                  right: 14.w,
                  top: 10.h,
                  bottom: 10.h,
                ),
                filled: true,
                fillColor: Color(0xFFEBEAEF),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.search, color: Color(0xFF8E8D93)),
                hintText: "Search",
                hintStyle: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF8E8D93),
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                filterbody(0, "All"),
                SizedBox(width: 10.w),
                filterbody(1, "unread"),
                SizedBox(width: 10.w),
                filterbody(2, "Groups"),
                SizedBox(width: 10.w),
                filterbody(3, "Staff"),
              ],
            ),
            SizedBox(height: 10.h),
            Text(
              "Unread – 2",
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(height: 24.h),
            chatList(
              "assets/maddy.png",
              "Maddy",
              "Hi there!",
              "How are you today?",
              "9.56 AM",
            ),
            SizedBox(height: 24.h),
            chatList(
              "assets/jassi.png",
              "Jillian Jacob",
              "It’s been a while",
              "How are you?",
              "yesterday",
            ),
            SizedBox(height: 25.h),
            Text(
              "Other",
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(height: 24.h),
            chatList(
              "assets/victory.png",
              "Victoria Hanson",
              "Service confirmation!",
              "Respected Sir, I Peter, your computer...",
              "9.56 AM",
            ),
          ],
        ),
      ),
    );
  }

  Widget chatList(
    String image,
    String name,
    String txt,
    String message,
    String time,
  ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => ChatingPage()),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 45.w,
            height: 45.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
            child: Image.asset(image),
          ),
          SizedBox(width: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                ),
              ),
              Text(
                txt,
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                width: 200.w,
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  message,
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6C7072),
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6C7072),
                ),
              ),
              SizedBox(height: 6.h),
              CircleAvatar(
                radius: 10,
                backgroundColor: Color(0xFF0F2169),
                child: Text(
                  "3",
                  style: GoogleFonts.inter(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget filterbody(int index, String txt) {
    final bool isSelect = filter == index;
    return InkWell(
      onTap: () {
        setState(() {
          filter = index;
        });
      },
      child: Container(
        padding: EdgeInsets.only(
          left: 15.w,
          right: 15.w,
          top: 8.h,
          bottom: 8.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26.r),
          color: isSelect ? Color(0xFF0F2169) : Color(0xFFEBEAEF),
        ),
        child: Text(
          txt,
          style: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: isSelect ? Color(0xFFFFFFFF) : Color(0xFF8A8A8A),
          ),
        ),
      ),
    );
  }
}
