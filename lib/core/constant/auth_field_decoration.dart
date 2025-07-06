import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/text_style.dart';

final authFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter your email',
  hintStyle: style14sourceblack.copyWith(color: lastcartColor),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r), // Rounded corners
    borderSide: BorderSide(color: lastcartColor),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: lastcartColor, width: 1.2),
  ),
  disabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: lastcartColor),
    borderRadius: BorderRadius.circular(10.r),
  ),
);
