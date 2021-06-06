import 'dart:math';

import 'package:fintech_ui_screens/constants/app_colors.dart';
import 'package:fintech_ui_screens/screens/crypto_currency_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 29, right: 29, top: 17),
          child: Column(
            children: [
              ListTile(
                dense: true,
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF00C2FF).withOpacity(0.31)),
                  child: Container(
                    width: 30,
                    height: 30,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFF00C2FF)),
                    child: Center(
                      child: Text(
                        "SA",
                        style: GoogleFonts.spaceGrotesk(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            height: 1.21),
                      ),
                    ),
                  ),
                ),
                title: Text(
                  "Skadgate Innovations",
                  style: GoogleFonts.dmSans(
                      fontSize: 15,
                      color: AppColors.blueText,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "99201122334 - Providus Bank",
                  style: GoogleFonts.dmSans(
                    fontSize: 11,
                    color: AppColors.blueText,
                  ),
                ),
                trailing: Icon(
                  Icons.notifications_outlined,
                  color: AppColors.blueText,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40.h),
                width: 317.w,
                height: 112.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFD9F6FF)),
                child: Stack(
                  children: [
                    Positioned(
                        top: 27.h,
                        left: 17.w,
                        child: Transform.rotate(
                          angle: pi * 1.306,
                          child: Icon(
                            Icons.nightlight_round,
                            size: 71,
                            color: Color(0xFF87E3FF).withOpacity(0.59),
                          ),
                        )),
                    Positioned(
                        top: 56.h,
                        right: 20.w,
                        child: Icon(
                          Icons.circle,
                          size: 35,
                          color: Color(0xFF87E3FF).withOpacity(0.59),
                        )),
                    Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Available Balance",
                            style: GoogleFonts.dmSans(
                                fontSize: 13.sp, color: AppColors.blueText),
                          ),
                          Text(
                            "\₦675,000.01",
                            style: GoogleFonts.dmSans(
                                fontSize: 26.sp,
                                color: AppColors.blueText,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 27.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add a Business Account",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color(0xFF0D3E53)),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      child: Icon(
                        Icons.add_circle_outline_outlined,
                        size: 14,
                        color: Color(0xFF00C2FF),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  // shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 0.9,
                  crossAxisSpacing: 19.w,
                  crossAxisCount: 2,
                  children: [
                    HomepageCard(
                      title: "Funds\nTransfer",
                      backgroundColor: Color(0xFFFFE8E9),
                      onTap: () {},
                      icon: Icon(
                        Icons.trip_origin_rounded,
                        size: 45.sp,
                        color: Color(0xFFFF9D78),
                      ),
                    ),
                    HomepageCard(
                      title: "Digital\nInvoicing",
                      onTap: () {},
                      backgroundColor: Color(0xFFF0FAFF),
                      icon: Icon(
                        FlutterIcons.file_invoice_faw5s,
                        size: 45.sp,
                        color: Color(0xFF87E3FF),
                      ),
                    ),
                    HomepageCard(
                      title: "Crypto\ncurrency",
                      backgroundColor: Color(0xFFEDE4FF),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CryptoCurrencyScreen()));
                      },
                      icon: Icon(
                        FlutterIcons.bitcoin_faw5d,
                        size: 45.sp,
                        color: Color(0xFFB7B6EC),
                      ),
                    ),
                    HomepageCard(
                      title: "Account\nstatement",
                      backgroundColor: Color(0xFFE3FFEF),
                      onTap: () {},
                      icon: Icon(
                        FlutterIcons.file_invoice_faw5s,
                        size: 45.sp,
                        color: Color(0xFFB4F5BE),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.blueText,
        unselectedItemColor: AppColors.blueText.withOpacity(0.25),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FlutterIcons.send_fea), label: "Send Money"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.ios_card), label: "Cards"),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined), label: "More")
        ],
      ),
    );
  }
}

class HomepageCard extends StatelessWidget {
  final Color backgroundColor;
  final Icon icon;
  final String title;
  final Function onTap;

  const HomepageCard(
      {Key key,
      @required this.backgroundColor,
      @required this.icon,
      @required this.title,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        padding: EdgeInsets.only(left: 17.w, top: 19.h, bottom: 19.h),
        width: 149.w,
        height: 187.h,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(9)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          icon,
          SizedBox(height: 10.h),
          Text(
            title,
            style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                color: AppColors.blueText,
                fontSize: 16.sp),
          ),
          SizedBox(height: 2.h),
          Text(
            "Send Funds to any\nBank Account.",
            style:
                GoogleFonts.dmSans(color: AppColors.blueText, fontSize: 12.sp),
          )
        ]),
      ),
    );
  }
}
