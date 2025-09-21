import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_app/Screen/customeDrawer.dart';
import 'package:fl_chart/fl_chart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> noticeList = [
    {
      "image": "assets/no.png",
      "name": "The school's Annual Sports Day will be held on May 12, 2024.",
      "time": "1h ago · by Principal",
    },
    {
      "image": "assets/no1.png",
      "name": "Summer Holiday begins on May-25, 2024.",
      "time": "3h ago · by Principal",
    },
  ];

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Customedrawer(),
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        leading: IconButton(
          style: IconButton.styleFrom(),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(Icons.menu, color: Color(0xFF000000), size: 25.sp),
        ),
        title: Text(
          "Dashboard",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Row(
              children: [
                SizedBox(width: 17.w),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 14.w,
                        right: 14.w,
                        top: 12.h,
                        bottom: 12.h,
                      ),
                      filled: true,
                      fillColor: Color(0xFFEBEAEF),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(113.r),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(113.r),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Search",
                      hintStyle: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8E8D93),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF8E8D93),
                        weight: 2.w,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 11.w),
                Container(
                  width: 42.w,
                  height: 42.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFECEBF1),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.notifications_none_outlined,
                      color: Color(0xFF6E6D71),
                      size: 22.sp,
                    ),
                  ),
                ),
                SizedBox(width: 17.w),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                SizedBox(width: 35.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey Das.",
                      style: GoogleFonts.inter(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: 200.w,
                      child: Text(
                        "Welcome back! Let’s dive into your classes and keep moving toward your goals.",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF797979),
                          letterSpacing: -1,
                        ),
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  "assets/human.png",
                  width: 136.w,
                  height: 131.h,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(width: 18.w),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                SizedBox(width: 38.w),
                buildMethod(
                  Color(0xFFF0F9FC),
                  "assets/student.png",
                  "5000",
                  "Student",
                ),
                SizedBox(width: 80.w),
                buildMethod(Color(0xFFF1F0FF), "assets/av.png", "50+", "Award"),
              ],
            ),
            SizedBox(height: 26.h),
            Row(
              children: [
                SizedBox(width: 38.w),
                buildMethod(
                  Color(0xFFFDF6D8),
                  "assets/de.png",
                  "30+",
                  "Department",
                ),
                SizedBox(width: 80.w),
                buildMethod(
                  Color(0xFFFFF4FD),
                  "assets/re.png",
                  "\$505+",
                  "Revenue",
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Row(
              children: [
                SizedBox(width: 38.w),
                Text(
                  "Notice Board",
                  style: GoogleFonts.inter(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
                Spacer(),
                Text(
                  "view all",
                  style: GoogleFonts.inter(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF0F2169),
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xFF0F2169),
                  ),
                ),
                SizedBox(width: 38.w),
              ],
            ),
            SizedBox(height: 10.h),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: noticeList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 12.h),
                  child: Row(
                    children: [
                      SizedBox(width: 38.w),
                      SizedBox(
                        width: 64.w,
                        height: 64.h,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            noticeList[index]['image'].toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 230.w,
                            child: Text(
                              noticeList[index]['name'].toString(),
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF090A0A),
                              ),
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            noticeList[index]['time'].toString(),
                            style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF6C7072),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 38.w),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 30.h),
            Row(
              children: [
                SizedBox(width: 38.w),
                Text(
                  "Over view",
                  style: GoogleFonts.inter(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
                Spacer(),
                Container(
                  width: 35.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xFFF2EFFF),
                  ),
                  child: Icon(
                    Icons.tune_outlined,
                    color: Color(0xFF6C6C6C),
                    size: 20.sp,
                  ),
                ),
                SizedBox(width: 38.w),
              ],
            ),
            SizedBox(height: 25.h),
            // Container(
            //   height: MediaQuery.of(context).size.height,
            //   child: LineChart(
            //     LineChartData(
            //       minX: 0,
            //       maxX: 5,
            //       minY: 0,
            //       maxY: 100,
            //       gridData: FlGridData(show: false),
            //       borderData: FlBorderData(show: false),
            //       titlesData: FlTitlesData(
            //         leftTitles: AxisTitles(
            //           sideTitles: SideTitles(
            //             showTitles: true,
            //             reservedSize: 35,
            //           ),
            //         ),
            //         bottomTitles: AxisTitles(
            //           sideTitles: SideTitles(
            //             showTitles: true,
            //             interval: 1,
            //             getTitlesWidget: (value, meta) {
            //               switch (value.toInt()) {
            //                 case 0:
            //                   return const Text(
            //                     "Apr10",
            //                     style: TextStyle(color: Colors.white70),
            //                   );
            //                 case 1:
            //                   return const Text(
            //                     "Apr11",
            //                     style: TextStyle(color: Colors.white70),
            //                   );
            //                 case 2:
            //                   return const Text(
            //                     "Apr12",
            //                     style: TextStyle(color: Colors.white70),
            //                   );
            //                 case 3:
            //                   return const Text(
            //                     "Apr13",
            //                     style: TextStyle(color: Colors.white70),
            //                   );
            //                 // case 4:
            //                 //   return const Text(
            //                 //     "Apr14",
            //                 //     style: TextStyle(color: Colors.white70),
            //                 //   );
            //               }
            //               return const Text("");
            //             },
            //           ),
            //         ),
            //         rightTitles: AxisTitles(
            //           sideTitles: SideTitles(showTitles: false),
            //         ),
            //         topTitles: AxisTitles(
            //           sideTitles: SideTitles(showTitles: false),
            //         ),
            //       ),
            //       lineBarsData: [
            //         LineChartBarData(
            //           isCurved: true,
            //           color: Colors.amber,
            //           barWidth: 3,
            //           belowBarData: BarAreaData(
            //             show: true,
            //             color: Colors.amber.withOpacity(0.2),
            //           ),
            //           dotData: FlDotData(show: true),
            //           spots: const [
            //             FlSpot(0, 60),
            //             FlSpot(0.7, 30),
            //             FlSpot(1.3, 65),
            //             FlSpot(2, 80),
            //             FlSpot(2.5, 60),
            //             FlSpot(3, 70),
            //             FlSpot(3.5, 90),
            //             FlSpot(4, 75),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Center(
              child: SizedBox(
                height: 400,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 30,
                          interval: 25,
                          getTitlesWidget: (value, meta) {
                            if (value == 0 ||
                                value == 25 ||
                                value == 50 ||
                                value == 75 ||
                                value == 100) {
                              return Text(
                                value.toInt().toString(),
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12,
                                ),
                              );
                            }
                            return const SizedBox();
                          },
                        ),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          interval: 1,
                          getTitlesWidget: (value, meta) {
                            switch (value.toInt()) {
                              case 0:
                                return const Text(
                                  "Apr10",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                );
                              case 1:
                                return const Text(
                                  "Apr11",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                );
                              case 2:
                                return const Text(
                                  "Apr12",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                );
                              case 3:
                                return const Text(
                                  "Apr13",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                );
                              case 4:
                                return const Text(
                                  "Apr14",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                );
                            }
                            return const SizedBox();
                          },
                        ),
                      ),
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
                    borderData: FlBorderData(show: false),
                    minX: 0,
                    maxX: 4,
                    minY: 0,
                    maxY: 100,
                    lineBarsData: [
                      LineChartBarData(
                        spots: const [
                          FlSpot(0, 60),
                          FlSpot(0.5, 40),
                          FlSpot(1, 70),
                          FlSpot(1.5, 50),
                          FlSpot(2, 80),
                          FlSpot(2.5, 60),
                          FlSpot(3, 70),
                          FlSpot(3.5, 90),
                          FlSpot(4, 75),
                        ],
                        isCurved: true,
                        color: Colors.amber,
                        barWidth: 3,
                        isStrokeCapRound: true,
                        dotData: FlDotData(show: false),
                        belowBarData: BarAreaData(
                          show: true,
                          gradient: LinearGradient(
                            colors: [
                              Colors.yellow.withOpacity(0.4),
                              Colors.transparent,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ],
                    lineTouchData: LineTouchData(
                      touchTooltipData: LineTouchTooltipData(
                        //tooltipBgColor: Colors.white,
                        getTooltipItems: (touchedSpots) {
                          return touchedSpots.map((spot) {
                            return LineTooltipItem(
                              "${spot.y.toInt()}%",
                              const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          }).toList();
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              children: [
                SizedBox(width: 38.w),
                Text(
                  "Resourses",
                  style: GoogleFonts.inter(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
                Spacer(),
                Text(
                  "view all",
                  style: GoogleFonts.inter(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF0F2169),
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xFF0F2169),
                  ),
                ),
                SizedBox(width: 38.w),
              ],
            ),
            SizedBox(height: 30.w),
            Row(
              children: [
                SizedBox(width: 38.w),
                resourseBody("assets/b1.png", Color(0xFFFEF4F0), "Books"),
                Spacer(),
                resourseBody("assets/b2.png", Color(0xFFD7FBED), "Videos"),
                Spacer(),
                resourseBody("assets/b3.png", Color(0xFFE2D8FC), "Papers"),
                SizedBox(width: 38.w),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget resourseBody(String image, Color bgColor, String txt) {
    return Column(
      children: [
        Container(
          width: 86.w,
          height: 83.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: bgColor,
          ),
          child: Image.asset(image),
        ),
        SizedBox(height: 5.h),
        Text(
          txt,
          style: GoogleFonts.inter(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xFF000000),
          ),
        ),
      ],
    );
  }

  Widget buildMethod(Color color, String image, String txt, String name) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 30.w,
              height: 30.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: color,
              ),
              child: Center(child: Image.asset(image)),
            ),
            SizedBox(width: 8.w),
            Text(
              txt,
              style: GoogleFonts.inter(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000),
                letterSpacing: -1,
              ),
            ),
          ],
        ),
        SizedBox(height: 5.h),
        Padding(
          padding: EdgeInsets.only(left: 6.w),
          child: Text(
            name,
            style: GoogleFonts.poppins(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFFB8B8B8),
              letterSpacing: -0.2,
            ),
          ),
        ),
      ],
    );
  }
}
