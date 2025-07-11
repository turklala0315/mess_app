import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/text_style.dart';

class ReusePresentAbsent extends StatelessWidget {
  VoidCallback? callback;
  ReusePresentAbsent({this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66.h,
      width: 330.w,
      decoration: BoxDecoration(
        color: purewhiteColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                callback!();
              },
              child: Container(
                height: 46.h,
                width: 110.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: halfwhiteColor,
                ),
                child: Center(child: Text('Present', style: style22)),
              ),
            ),
            GestureDetector(
              onTap: () {
                callback!();
              },
              child: Container(
                height: 46.h,
                width: 110.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: halfwhiteColor,
                ),
                child: Center(child: Text('Absent', style: style22)),
              ),
            ),
            //
            //  adjust the present and absent member color changing buttons
            //
          ],
        ),
      ),
    );
  }
}
