import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/text_style.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31, vertical: 66),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, size: 28, color: mainblackColor),
            ),
            //
            SizedBox(height: 38.h),
            Text('Enter you details for Registration', style: style18pureblack),

            //
            SizedBox(height: 38.h),

            //
            Text('Full Name', style: style12black),
          ],
        ),
      ),
    );
  }
}
