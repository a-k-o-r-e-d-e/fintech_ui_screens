import 'package:fintech_ui_screens/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CryptoCurrencyScreen extends StatelessWidget {
  const CryptoCurrencyScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: AppColors.blueText,
          ),
        ),
        title: Text(
          "Crypto Currency",
          style: GoogleFonts.dmSans(
              color: AppColors.blueText,
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(right: 31.w),
                child: TextButton(
                    style: TextButton.styleFrom(
                        minimumSize: Size(89.w, 24.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                            side: BorderSide(color: Color(0xFF00C2FF)))),
                    onPressed: () {},
                    child: Text(
                      "Withdraw Funds".toUpperCase(),
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 7,
                          wordSpacing: 0.08,
                          color: AppColors.blueText),
                    )),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 15.h),
            width: 317.w,
            height: 112.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    colors: [Color(0xFF19B8FF), Color(0xFF706EFF)])),
            child: Stack(
              children: [
                Positioned(
                    top: -60,
                    left: 100,
                    child: Icon(
                      Icons.trip_origin_rounded,
                      size: 100,
                      color: Colors.white.withOpacity(.22),
                    )),
                Positioned(
                    top: 11,
                    right: 19,
                    child: Icon(
                      Icons.circle,
                      size: 25,
                      color: Colors.white.withOpacity(.11),
                    )),
                Row(
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      margin: EdgeInsets.only(left: 9.w),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.21)),
                      child: Icon(
                        FlutterIcons.btc_faw5d,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10.w),
                          child: Text(
                            "1.00322BTC",
                            style: GoogleFonts.dmSans(
                                fontSize: 26.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 9.w),
                          child: Text(
                            "BITCOIN WALLET BALANCE",
                            style: GoogleFonts.dmSans(
                                fontSize: 7,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 30.w),
                        child: VerticalDivider(color: Colors.white)),
                    Container(
                      margin: EdgeInsets.only(left: 13.w),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "BTC/USD",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 7,
                                color: Colors.white),
                          ),
                          Text(
                            "\$39,445.18",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                                color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.h, left: 51.w, right: 43.w),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RowChipItem(
                  backgroundColor: Color(0xFFFFEAE9),
                  text: "Send",
                  icon: Icon(
                    FlutterIcons.paper_plane_sli,
                    color: Color(0xFFFFA181),
                  ),
                ),
                RowChipItem(
                  backgroundColor: Color(0xFFF0FAFF),
                  text: "Receive",
                  icon: Icon(
                    Icons.save_alt_rounded,
                    color: AppColors.skyBlue,
                  ),
                ),
                RowChipItem(
                  backgroundColor: Color(0xFFEDE4FF),
                  text: "Buy/Sell",
                  icon: Icon(
                    FlutterIcons.inbox_ant,
                    color: Color(0xFF7A81E5),
                  ),
                ),
                RowChipItem(
                  backgroundColor: Color(0xFFE3FFEF),
                  text: "Fund",
                  icon: Icon(
                    Icons.add_circle_outline_outlined,
                    color: Color(0xFF64E177),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24.h),
            height: 40.h,
            width: double.infinity,
            padding: EdgeInsets.only(left: 32.w, top: 15.h),
            color: Color(0xFFF0FAFF),
            child: Text(
              "RECENT ACTIVITY",
              style:
                  GoogleFonts.dmSans(color: AppColors.blueText, fontSize: 10),
            ),
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(top: 96.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  FlutterIcons.file_text_fea,
                  color: AppColors.skyBlue,
                  size: 67,
                ),
                Text(
                  "No Transaction yet.",
                  style: GoogleFonts.dmSans(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blueText),
                ),
                Text(
                  "Initiate transaction to view record",
                  style: GoogleFonts.dmSans(
                      fontSize: 12, color: AppColors.blueText),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class RowChipItem extends StatelessWidget {
  final Icon icon;
  final Color backgroundColor;
  final String text;

  const RowChipItem({
    @required this.icon,
    @required this.backgroundColor,
    @required this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 45,
          height: 48,
          margin: EdgeInsets.only(bottom: 5.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9), color: backgroundColor),
          child: icon,
        ),
        Text(
          text,
          style: GoogleFonts.dmSans(fontSize: 10, color: AppColors.blueText),
        )
      ],
    );
  }
}
