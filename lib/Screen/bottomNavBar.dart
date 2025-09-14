import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_app/Screen/chat.inbox.page.dart';
import 'package:student_app/Screen/home.page.dart';
import 'package:student_app/Screen/profile.page.dart';
import 'package:student_app/Screen/time.page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectIndex = 0;
  List pages = [HomePage(), TimePage(), ChatInboxPage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectIndex],
      bottomNavigationBar: BottomAppBar(
        height: 65.h,
        padding: EdgeInsets.zero,
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.white,
        elevation: 20,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Color(0xFFDCDCDC), width: 1.w),
            ),
            color: Color(0xFFFFFFFF),
          ),
          child: Padding(
            padding: EdgeInsets.zero,
            child: Row(
              children: [
                Expanded(child: _buildTab(icon: Icons.home, index: 0)),
                Expanded(
                  child: _buildTab(icon: Icons.calendar_month, index: 1),
                ),
                Expanded(
                  child: _buildTab(icon: Icons.chat_bubble_outline, index: 2),
                ),
                Expanded(
                  child: _buildTab(
                    icon: Icons.person_outline_outlined,
                    index: 3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTab({required IconData icon, required int index}) {
    final isSelected = selectIndex == index;
    return Container(
      height: 70.h,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: isSelected ? Color(0xFF0F2169) : Colors.transparent,
            width: 5.w,
          ),
        ),
      ),
      child: MaterialButton(
        onPressed: () {
          setState(() {
            selectIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color:
                  isSelected
                      ? const Color(0xFF0F2169)
                      : const Color(0xFF979C9E),
            ),
          ],
        ),
      ),
    );
  }
}
