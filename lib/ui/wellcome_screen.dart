import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/auth/login/login_screen.dart';
import 'package:mess_app/core/constant/auth/register/registeration_screen.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/string.dart';
import 'package:mess_app/core/constant/text_style.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Top Left: Free Delivery tag
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            left: MediaQuery.of(context).size.width * 0.1,
            child: Transform.rotate(
              angle: -25,
              child: Image.asset('$iconsAssets/s1.png', scale: 4),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            right: MediaQuery.of(context).size.width * 0.1,
            child: Transform.rotate(
              angle: -0.2, // Rotate slightly clockwise
              child: Image.asset('$iconsAssets/s2.png', scale: 4),
            ),
          ),
          // Middle Left: Pure Veg tag
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            left: MediaQuery.of(context).size.width * 0.1,
            child: Transform.rotate(
              angle: -0.2, // Rotate slightly counter-clockwise
              child: Image.asset('$iconsAssets/s3.png', scale: 4),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            right: MediaQuery.of(context).size.width * 0.08,
            child: Transform.rotate(
              angle: -25, // Rotate slightly clockwise
              child: Image.asset('$iconsAssets/s4.png', scale: 4),
            ),
          ),
          // Central Illustration (Placeholder)
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(bottom: 100.0),
              child: Image.asset('$iconsAssets/man.png', scale: 3),
            ),
          ),
          // Bottom Buttons
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 40.0, left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Login Button
                    SizedBox(height: 16.h),
                    //
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Login', style: style18),
                            //
                            SizedBox(width: 3.w),
                            //
                            Image.asset('$iconsAssets/login.png', scale: 4.5),
                          ],
                        ),
                      ),
                    ),
                    //
                    SizedBox(height: 19.h),
                    //
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegistrationScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 338.w,
                        height: 58.h,
                        decoration: BoxDecoration(
                          color: mainorangeColor,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: orangeborderColor),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Register', style: style18),
                            //
                            SizedBox(width: 3.w),
                            //
                            Image.asset('$iconsAssets/profile.png', scale: 4.5),
                          ],
                        ),
                      ),
                    ),
                    //
                    SizedBox(height: 79.h),
                    //
                    Text('All Rights reserved to MessCompany', style: style10),
                    Text('Copyrights reserved @2025', style: style10),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
