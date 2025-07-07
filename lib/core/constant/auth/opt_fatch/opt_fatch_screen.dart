import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/string.dart';
import 'package:mess_app/core/constant/text_style.dart';
import 'package:mess_app/ui/menu/menu_screen.dart';

class OptFatchScreen extends StatefulWidget {
  const OptFatchScreen({super.key});

  @override
  State<OptFatchScreen> createState() => _OptFatchScreenState();
}

class _OptFatchScreenState extends State<OptFatchScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (_) => MenuScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('$iconsAssets/good.png', scale: 4.5)),
          //
          SizedBox(height: 54.53.h),
          //
          Text('Login Successful', style: style22),
          //
          //
          SizedBox(height: 12.h),
          //
          //
          Text('Entering into the application', style: style16),
        ],
      ),
    );
  }
}
