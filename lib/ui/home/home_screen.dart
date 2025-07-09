import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/string.dart';
import 'package:mess_app/core/constant/text_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CircleAvatar(
              radius: 41.r,
              backgroundColor: circularColor,
              child: Image.asset('$iconsAssets/man.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            SizedBox(height: 20.h),

            //
            Container(
              padding: EdgeInsets.only(left: 15, top: 15),
              height: 256.h,
              width: double.infinity,
              color: mainorangeColor,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pay today and save\n200 RS', style: style22white),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Offer description goes here, Offer\n description goes here, Offer description\n goes here Offer description goes here, Offer\n description goes here, Offer description\n goes here',
                        style: style14white,
                      ),
                      Image.asset('$staticAssets/tefen.png', scale: 4.5),
                    ],
                  ),
                ],
              ),
            ),
            //
            SizedBox(height: 22.h),

            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome, Shreyas Wani', style: style22simple),
                  //
                  SizedBox(height: 7.h),

                  //
                  Text('We are preparing your meal...', style: style12),
                  //
                  SizedBox(height: 28.h),
                  //
                  Text('Need lunch today ?', style: style22main),
                  //
                  SizedBox(height: 33.h),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 88.02.h,
                          width: 58.w,
                          decoration: BoxDecoration(
                            color: mainorangeColor,
                            borderRadius: BorderRadius.circular(130.48.r),
                            border: Border.all(color: circulrnoColor),
                          ),
                          child: Center(child: Text('Yes', style: style23)),
                        ),
                      ),
                      //
                      SizedBox(width: 63.w),
                      //
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 88.02.h,
                          width: 58.w,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(130.48.r),
                            border: Border.all(color: circulrnoColor),
                          ),
                          child: Center(
                            child: Text('No', style: style23mainblack),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //
                  SizedBox(height: 83.99.h),

                  //
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, top: 30),
              height: 256.h,
              width: double.infinity,
              color: greenColor,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pay today and save\n200 RS', style: style22white),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Offer description goes here, Offer\n description goes here, Offer\n description goes here',
                        style: style14white,
                      ),
                      Image.asset('$staticAssets/tefen.png', scale: 4.5),
                    ],
                  ),
                ],
              ),
            ),
            //
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
