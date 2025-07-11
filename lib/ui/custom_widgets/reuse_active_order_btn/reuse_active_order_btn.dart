import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/text_style.dart';

class ReuseActiveOrderBtn extends StatelessWidget {
  final String btnname;
  VoidCallback? callback;
  ReuseActiveOrderBtn({super.key, this.callback, required this.btnname});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 41.h,
        width: 80.w,
        decoration: BoxDecoration(
          color: purewhiteColor,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Center(child: Text(btnname, style: style14black)),
      ),
    );
  }
}
