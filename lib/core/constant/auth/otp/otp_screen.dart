import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/auth/opt_fatch/opt_fatch_screen.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/string.dart';
import 'package:mess_app/core/constant/text_style.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 373.h,
              width: double.infinity,
              decoration: BoxDecoration(color: mainorangeColor),
              child: Stack(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 66,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, color: whiteColor, size: 28),
                    ),
                  ),
                  Center(
                    child: Image.asset('$iconsAssets/logo.png', scale: 4.5),
                  ),
                ],
              ),
            ),
            //
            //
            SizedBox(height: 58.h),

            //
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('OTP Verification', style: style22),
                  //
                  SizedBox(height: 12.h),
                  //
                  Text(
                    'Enter the verification code we have just sent on your mobile number',
                    style: style16,
                  ),
                  //
                  SizedBox(height: 41.h),

                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      optcontainer(),
                      optcontainer(),
                      optcontainer(),
                      optcontainer(),
                    ],
                  ),
                  //
                  SizedBox(height: 60.h),

                  //
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OptFatchScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 335.w,
                      height: 58.h,
                      decoration: BoxDecoration(
                        color: mainblackColor,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: borderColor),
                      ),
                      child: Center(child: Text('Verify OTP', style: style18)),
                    ),
                  ),
                  //
                  SizedBox(height: 24.h),

                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Didn’t Received code ?', style: style12black),
                      TextButton(
                        onPressed: () {
                          //
                          //  bulid your logic here
                          //
                        },
                        child: Text('Resend', style: style14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
//
// reuse widgets
//
Widget optcontainer() {
  return Container(
    height: 62.h,
    width: 55.w,
    decoration: BoxDecoration(
      color: optboxColor,
      borderRadius: BorderRadius.circular(8.r),
      border: Border.all(color: darkgrayColor),
    ),
  );
}
