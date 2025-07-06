import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/string.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainorangeColor,
      body: Stack(
        children: [
          Positioned(
            top: 66.h,
            left: 33.w,
            child: InkWell(
              onTap: () {},
              child: Icon(Icons.arrow_back, size: 30, color: whiteColor),
            ),
          ),
          Center(child: Image.asset('$iconsAssets/logo.png', scale: 3)),
        ],
      ),
    );
  }
}
