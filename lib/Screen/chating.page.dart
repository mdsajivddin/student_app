import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatingPage extends StatefulWidget {
  const ChatingPage({super.key});

  @override
  State<ChatingPage> createState() => _ChatingPageState();
}

class _ChatingPageState extends State<ChatingPage> {
  final messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  // ✅ Add message list
  final List<Map<String, dynamic>> _messages = [];

  void _handleSendMessage() {
    final text = messageController.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _messages.add({'text': text, 'isSender': true});
      });
      messageController.clear();

      // ✅ Scroll to bottom after sending
      Future.delayed(Duration(milliseconds: 100), () {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // ✅ Optional: preload some messages
    _messages.addAll([
      {'text': "Hi, Mandy", 'isSender': true},
      {'text': "I’ve tried the app", 'isSender': true},
      {'text': "Really?", 'isSender': false},
      {'text': "Yeah, It’s really good!", 'isSender': true},
    ]);

    // ✅ Scroll after a frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFFFFFF),
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Color(0xFF000000)),
            ),
            Container(
              width: 45.w,
              height: 45.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: ClipOval(child: Image.asset("assets/maddy.png")),
            ),
            SizedBox(width: 14.w),
            Text(
              "EDU",
              style: GoogleFonts.inter(
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFF017DFE),
              ),
            ),
          ],
        ),
      ),
      body: AnimatedPadding(
        duration: Duration(milliseconds: 100),
        padding: EdgeInsets.only(bottom: 80.h),
        child: SingleChildScrollView(
          controller: _scrollController, // ✅ Important
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  itemCount: _messages.length,
                  reverse: false,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final message = _messages[index];
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: ChatBubble(
                        message: message['text'],
                        isSender: message['isSender'],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Color(0xffFFFFFF)),
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            bottom: 13.h,
            top: 13.h,
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: messageController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      left: 16.w,
                      right: 16.w,
                      top: 12.h,
                      bottom: 12.h,
                    ),
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.r),
                      borderSide: BorderSide(color: Color(0xFFE3E5E5)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.r),
                      borderSide: BorderSide(color: Color(0xFFE3E5E5)),
                    ),
                    hintText: "Type Message",
                    hintStyle: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 140, 140, 148),
                      letterSpacing: -0.2,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              InkWell(
                onTap: () {
                  _handleSendMessage();
                },
                child: Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: Color(0xFF017DFE),
                  ),
                  child: Icon(Icons.send, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isSender;
  const ChatBubble({super.key, required this.message, required this.isSender});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        decoration: BoxDecoration(
          color: isSender ? Color(0xFF017DFE) : Color(0xFFF2F4F5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
            bottomLeft: Radius.circular(isSender ? 20.r : 0),
            bottomRight: Radius.circular(isSender ? 0 : 20.r),
          ),
        ),
        child: Text(
          message,
          style: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: isSender ? Colors.white : Color(0xFF090A0A),
            letterSpacing: -0.5,
          ),
        ),
      ),
    );
  }
}
