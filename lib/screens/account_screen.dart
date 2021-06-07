import 'dart:math';

import 'package:fintech_ui_screens/constants/app_colors.dart';
import 'package:fintech_ui_screens/widgets/profile_picture_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TestPersistentBar();
  }
}

class TransactionHistoryListItem extends StatelessWidget {
  final String dateStr;
  final String description;
  final String amountStr;
  final Color amountStrColor;

  const TransactionHistoryListItem(
      {Key key,
      @required this.dateStr,
      @required this.description,
      @required this.amountStr,
      @required this.amountStrColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                dateStr,
                style: GoogleFonts.raleway(
                    color: AppColors.lightPurpleText.withOpacity(.75),
                    fontSize: 9,
                    fontWeight: FontWeight.w400,
                    letterSpacing: .11),
              ),
              Container(
                margin: EdgeInsets.only(left: 7.w),
                child: Text(
                  description,
                  style: GoogleFonts.mavenPro(
                      color: AppColors.purpleText,
                      fontSize: 12,
                      letterSpacing: .14),
                ),
              )
            ],
          ),
          Text(
            amountStr,
            style: GoogleFonts.raleway(
                color: amountStrColor,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                letterSpacing: .17),
          ),
        ],
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu_rounded),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 28.w),
              child: Icon(
                Ionicons.md_notifications_outline,
                color: AppColors.goldText,
              ))
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 240.h,
            color: Color(0xFF562F6D),
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: Stack(
              children: [
                Positioned(
                  right: -18,
                  child: Icon(
                    Icons.trip_origin_rounded,
                    color: Colors.white.withOpacity(.07),
                    size: 122,
                  ),
                ),
                Positioned(
                  top: 76,
                  left: 80,
                  child: Transform.rotate(
                    angle: pi * 1.55,
                    child: Icon(
                      FlutterIcons.triangle_fea,
                      color: Colors.white.withOpacity(.07),
                      size: 40,
                    ),
                  ),
                ),
                Positioned(
                  top: 68,
                  left: 168,
                  child: Icon(
                    FlutterIcons.square_faw,
                    color: Colors.white.withOpacity(.07),
                    size: 40,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: kToolbarHeight.h),
                  child: ListTile(
                    dense: true,
                    leading: ProfilePictureWidget(
                      outerCircleSize: 50,
                      innerCircleSize: 39,
                      outerCircleColor: Color(0xFFE2E7F2).withOpacity(0.27),
                      innerCircleColor: Color(0xFFE2E7F2).withOpacity(0.27),
                      child: CircleAvatar(
                        radius: 39.0,
                        backgroundImage:
                            NetworkImage('https://i.pravatar.cc/150'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    title: RichText(
                        text: TextSpan(
                            text: 'Christopher',
                            style: GoogleFonts.mavenPro(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                          TextSpan(
                              text: ' Ntuk',
                              style: GoogleFonts.mavenPro(
                                  color: Color(0xFFFFC43A),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))
                        ])),
                    subtitle: RichText(
                        text: TextSpan(
                            text: 'Welcome back',
                            style: GoogleFonts.raleway(
                                color: Colors.white.withOpacity(.96),
                                fontSize: 8,
                                fontWeight: FontWeight.w400),
                            children: <TextSpan>[
                          TextSpan(
                              text: ' @devchris',
                              style: GoogleFonts.mavenPro(
                                  color: Color(0xFFFFC43A), fontSize: 10))
                        ])),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 169.h),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 346.w,
                  height: 140.h,
                  margin: EdgeInsets.only(top: 24.h),
                  decoration: BoxDecoration(
                      color: Color(0xFF562F6D),
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 35.w,
                          right: 43.w,
                          child: Icon(
                            Icons.circle,
                            size: 35,
                            color: Colors.white.withOpacity(.11),
                          )),
                      Positioned(
                        left: 124.w,
                        top: -25.h,
                        child: Transform.rotate(
                          angle: pi * 1.5,
                          child: Icon(
                            Icons.nightlight_round,
                            size: 100,
                            color: Colors.white.withOpacity(.11),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: -38.w,
                          right: -50.w,
                          child: Icon(
                            FlutterIcons.ellipse_outline_mco,
                            size: 96,
                            color: Colors.white.withOpacity(.11),
                          )),
                      Positioned(
                          bottom: 11.w,
                          left: 53.w,
                          child: Transform.rotate(
                            angle: pi * 1.87,
                            child: Icon(
                              FlutterIcons.square_faw,
                              color: Colors.white.withOpacity(.11),
                            ),
                          )),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back_ios_rounded,
                              color: AppColors.goldText,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.h),
                              child: Column(
                                children: [
                                  Text(
                                    "USD ACCOUNT",
                                    style: GoogleFonts.mavenPro(
                                        fontSize: 10,
                                        color: Colors.white.withOpacity(.40),
                                        letterSpacing: 10),
                                  ),
                                  Text(
                                    "\$5,123",
                                    style: GoogleFonts.mavenPro(
                                        fontSize: 54.sp,
                                        color: Colors.white,
                                        letterSpacing: -2.7),
                                  ),
                                  Text(
                                    "Available Balance",
                                    style: GoogleFonts.mavenPro(
                                        fontSize: 13, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: AppColors.goldText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24.h, bottom: 28.h),
                  height: 40.h,
                  width: double.infinity,
                  padding: EdgeInsets.only(
                      left: 23.w, top: 10.h, bottom: 10.h, right: 27.w),
                  color: AppColors.purpleText.withOpacity(.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "RECENT ACTIVITY",
                        style: GoogleFonts.mavenPro(
                            color: AppColors.purpleText.withOpacity(.8),
                            letterSpacing: 0.17,
                            fontSize: 14),
                      ),
                      Text(
                        "SEE MORE",
                        style: GoogleFonts.mavenPro(
                            fontWeight: FontWeight.bold,
                            color: AppColors.purpleText.withOpacity(.89),
                            letterSpacing: 0.12,
                            fontSize: 10),
                      ),
                    ],
                  ),
                ),
                ListView(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  children: [
                    TransactionHistoryListItem(
                      dateStr: "Tuesday, March 31st, 2020",
                      description: "Transfer to Naira Account",
                      amountStr: "NGN124,000.44",
                      amountStrColor: AppColors.goldText,
                    ),
                    TransactionHistoryListItem(
                      dateStr: "Wednesday, July 31st, 2020",
                      description: "West Minchester Bank...",
                      amountStr: "EUR900.00",
                      amountStrColor: AppColors.purpleText,
                    ),
                    TransactionHistoryListItem(
                      dateStr: "Tuesday, August 31st, 2020",
                      description: "Purchase on Ebay...",
                      amountStr: "EUR400.00",
                      amountStrColor: AppColors.goldText,
                    ),
                    TransactionHistoryListItem(
                      dateStr: "Tuesday, November 31st, 2020",
                      description: "Netflix Subscription",
                      amountStr: "USD5.44",
                      amountStrColor: AppColors.goldText,
                    ),
                    TransactionHistoryListItem(
                      dateStr: "Wednesday, December 31st, 2020",
                      description: "University of Calgary...",
                      amountStr: "EUR1,200.00",
                      amountStrColor: AppColors.purpleText,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TestPersistentBar extends StatelessWidget {
  const TestPersistentBar({Key key}) : super(key: key);

  List<Widget> _buildScreens() {
    return [
      MainScreen(),
      MainScreen(),
      MainScreen(),
      MainScreen(),
      MainScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: 'Home',
        activeColorPrimary: AppColors.purpleText,
        inactiveColorPrimary: AppColors.purpleText,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(FlutterIcons.search_dollar_faw5s),
        title: 'Check Rate',
        activeColorPrimary: AppColors.purpleText,
        inactiveColorPrimary: AppColors.purpleText,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          FlutterIcons.send_faw,
          color: Colors.white,
        ),
        title: '',
        activeColorPrimary: AppColors.purpleText,
        inactiveColorPrimary: AppColors.purpleText,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.monetization_on_outlined),
        title: 'Fund Account',
        activeColorPrimary: AppColors.purpleText,
        inactiveColorPrimary: AppColors.purpleText,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset("assets/icons/payment_card_icon.png"),
        title: 'Cards',
        activeColorPrimary: AppColors.purpleText,
        inactiveColorPrimary: AppColors.purpleText,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(0),
        colorBehindNavBar: AppColors.purpleText.withOpacity(.06),
      ),
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }
}
