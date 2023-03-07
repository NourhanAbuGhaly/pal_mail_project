import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pal_mail_project/screens/home/home.dart';
import 'package:pal_mail_project/screens/tag_screen.dart';

import '../utils/constant.dart';
import '../widget/custom_header.dart';

class NewInbox extends StatefulWidget {
  const NewInbox({Key? key}) : super(key: key);
  static const id = 'NewInbox';

  @override
  State<NewInbox> createState() => _NewInboxState();
}

class _NewInboxState extends State<NewInbox> {
  bool isExpanded2 = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              InkWell(
                onTap: (){Navigator.pushNamed(context,HomeScreen.id );},
                child: CustomHeader(
                  title: 'New Inbox',
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                decoration: inboxDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              right: 9.w,
                            ),
                            child: Icon(
                              Icons.perm_identity,
                              color: Color(0xff707070),
                            ),
                          ),
                          Text(
                            'Sender',
                            style: GoogleFonts.poppins(
                                color: Color(0xffAFAFAF),
                                fontSize: 18.0.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          FaIcon(
                            FontAwesomeIcons.circleInfo,
                            size: 24.sp,
                            color: seconderyColor,
                          ),
                        ],
                      ),
                      Divider(
                        thickness: .3,
                        color: subTitleColor,
                      ),
                      Row(
                        children: [
                          Text(
                            'Category',
                            style: GoogleFonts.poppins(
                              fontSize: 18.0.sp,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'others',
                            style: GoogleFonts.poppins(
                                fontSize: 14.0.sp, color: subTitleColor),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          FaIcon(
                            FontAwesomeIcons.angleRight,
                            size: 12,
                            color: subTitleColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                decoration: inboxDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Title of mail',
                        style: GoogleFonts.poppins(
                            color: Color(0xffAFAFAF),
                            fontSize: 18.0.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      Divider(
                        thickness: .3,
                        color: subTitleColor,
                      ),
                      Text(
                        'Description',
                        style: GoogleFonts.poppins(
                          fontSize: 14.0.sp,
                          color: subTitleColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                decoration: inboxDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              right: 9.w,
                            ),
                            child: FaIcon(
                              FontAwesomeIcons.calendar,
                              size: 22,
                              color: Colors.red,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Date',
                                style: GoogleFonts.poppins(
                                  fontSize: 18.0.sp,
                                ),
                              ),
                              Text(
                                'Tuesday, July 5, 2022',
                                style: GoogleFonts.poppins(
                                  fontSize: 14.0.sp,
                                  color: seconderyColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: .3,
                        color: subTitleColor,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              right: 9.w,
                            ),
                            child: FaIcon(
                              FontAwesomeIcons.fileZipper,
                              size: 22,
                              color: Color(0xff6F7CA7),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Archive',
                                style: GoogleFonts.poppins(
                                  fontSize: 18.0.sp,
                                ),
                              ),
                              Text(
                                '2022/6019',
                                style: GoogleFonts.poppins(
                                  fontSize: 14.0.sp,
                                  color: seconderyColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                decoration: inboxDecoration,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '#',
                            style: GoogleFonts.poppins(
                                color: Color(0xff707070),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            'Tags ',
                            style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, TagScreen.id);
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 14.sp,
                            color: subTitleColor,
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                height: 56.h,
                decoration: inboxDecoration,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.tag,
                            size: 24.sp,
                            color: Color(0xff707070),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(30.r)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Inbox',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 14.sp,
                            color: subTitleColor,
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                decoration: inboxDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Decision',
                        style: GoogleFonts.poppins(
                            fontSize: 18.0.sp, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Add Decision…',
                        style: GoogleFonts.poppins(
                          fontSize: 14.0.sp,
                          color: subTitleColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                decoration: inboxDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Add Image',
                    style: GoogleFonts.poppins(
                      color: seconderyColor,
                      fontSize: 16.0.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  initiallyExpanded: true,
                  onExpansionChanged: (bool expanding) =>
                      setState(() => isExpanded2 = expanding),
                  title: Text(
                    'Activity',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20.0.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: FaIcon(
                    isExpanded2
                        ? FontAwesomeIcons.angleUp
                        : FontAwesomeIcons.angleDown,
                    size: 16,
                    color: isExpanded2 ? seconderyColor : subTitleColor,
                  ),
                  children: <Widget>[
                    Container(
                      decoration: inboxDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: 9.w,
                                  ),
                                  child: CircleAvatar(
                                    radius: 12.r,
                                    backgroundImage:
                                        AssetImage('images/user.jpg'),
                                  ),
                                ),
                                Text(
                                  'Hussam',
                                  style: GoogleFonts.poppins(
                                      fontSize: 18.0.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Spacer(),
                                Text(
                                  'Today, 11:00 AM',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12.0.sp, color: subTitleColor),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.angleRight,
                                  size: 12,
                                  color: subTitleColor,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 37.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'The issue transferred to AAAA',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14.0.sp,
                                        color: subTitleColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Container(
                      decoration: inboxDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: 9.w,
                                  ),
                                  child: CircleAvatar(
                                    radius: 12.r,
                                    backgroundImage:
                                        AssetImage('images/user.jpg'),
                                  ),
                                ),
                                Text(
                                  'Ali',
                                  style: GoogleFonts.poppins(
                                      fontSize: 18.0.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Spacer(),
                                Text(
                                  'Today, 11:00 AM',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12.0.sp, color: subTitleColor),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.angleRight,
                                  size: 12,
                                  color: subTitleColor,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 37.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'The issue transferred to AAAA',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14.0.sp,
                                        color: subTitleColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffEEEEF6),
                    hintText: 'Add new Activity …',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      color: const Color(0xffAFAFAF),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20.h,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.paperPlane,
                          color: primaryColor,
                        )),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 9.w, left: 16.w),
                      child: CircleAvatar(
                        radius: 12.r,
                        backgroundImage: AssetImage(
                          'images/user.jpg',
                        ),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(50.r)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.r),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.r),
                      borderSide: BorderSide(
                        color: primaryColor,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
