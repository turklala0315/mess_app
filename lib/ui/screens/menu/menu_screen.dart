import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/ui/custom_widgets/banner/reuse_banner.dart';
import 'package:mess_app/ui/screens/details/details_screen.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/string.dart';
import 'package:mess_app/core/constant/text_style.dart';
import 'package:mess_app/ui/screens/details_for_registeration/details_for_reggisteration.dart';
import 'package:mess_app/ui/screens/order/order_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 66),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 28,
                      color: mainblackColor,
                    ),
                  ),
                  //
                  //
                  SizedBox(height: 29.h),

                  //
                  Text('Rate Card', style: style32),
                  //
                  //
                  SizedBox(height: 24.h),

                  //
                  //
                  Text('Per Day Plan', style: style22main),
                  //
                  //
                  SizedBox(height: 15.h),
                  //
                  //
                  Text(
                    'All the details about the plan goes here',
                    style: style14main,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'All the details about the plan goes here',
                        style: style14main,
                      ),
                      Image.asset("$staticAssets/palet.png", scale: 4.5),
                    ],
                  ),
                  Text(
                    'All the details about the plan goes here',
                    style: style14main,
                  ),
                  // //
                  SizedBox(height: 21.h),
                  //
                  Text('Fee : 3000 rs', style: style22main),
                  //
                  SizedBox(height: 45.h),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Monthly Plan One Time', style: style22main),

                      Image.asset("$staticAssets/palet.png", scale: 4.5),
                    ],
                  ),
                  //
                  SizedBox(height: 17.h),
                  //
                  Text('Fee : 2600 rs', style: style22main),
                ],
              ),
            ),
            ReuseBanner(
              Color: mainorangeColor,
              title: 'Pay today and save\n200 RS',
              subtitle:
                  'Offer description goes here, Offer\ndescription goes here, Offer description\ngoes here Offer description goes here, Offer\ndescription goes here, Offer description\ngoes here',
            ),
            //
            SizedBox(height: 56.h),

            //
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsForReggisteration(),
                  ),
                );
              },
              child: Center(
                child: Container(
                  width: 330.w,
                  height: 58.h,
                  decoration: BoxDecoration(
                    color: mainblackColor,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: borderColor),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Register for Admission', style: style18),
                      //
                      SizedBox(width: 3.w),
                      //
                      Image.asset('$iconsAssets/login.png', scale: 4.5),
                    ],
                  ),
                ),
              ),
            ),
            //
            SizedBox(height: 12.h),
            //
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderScreen()),
                );
              },
              child: Center(
                child: Container(
                  width: 330.w,
                  height: 58.h,
                  decoration: BoxDecoration(
                    color: mainblackColor,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: borderColor),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Guest Order', style: style18),
                      //
                      SizedBox(width: 3.w),
                      //
                      Image.asset('$iconsAssets/profile.png', scale: 4.5),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 22.h),
            GestureDetector(
              onTap: () {},
              child: Center(
                child: Container(
                  width: 330.w,
                  height: 58.h,
                  decoration: BoxDecoration(
                    color: mainblackColor,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: borderColor),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Order food', style: style14whitesemibold),
                      Text('(coming soon..)', style: style14white),
                      //
                      SizedBox(width: 3.w),
                      //
                      Image.asset('$staticAssets/box.png', scale: 4.5),
                    ],
                  ),
                ),
              ),
            ),
            //
            SizedBox(height: 30.h),
            //
          ],
        ),
      ),
    );
  }
}
