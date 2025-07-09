import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/string.dart';
import 'package:mess_app/core/constant/text_style.dart';

class ReuseBanner extends StatelessWidget {
  final Color;
  final String title;
  final String subtitle;

  const ReuseBanner({
    super.key,
    required this.Color,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, top: 15),
      height: 256.h,
      width: double.infinity,
      color: Color,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: style22white),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(subtitle, style: style14white),
              Image.asset('$staticAssets/tefen.png', scale: 4.5),
            ],
          ),
        ],
      ),
    );
  }
}
