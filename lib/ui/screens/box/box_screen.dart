import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/string.dart';
import 'package:mess_app/core/constant/text_style.dart';
import 'package:mess_app/ui/custom_widgets/banner/reuse_banner.dart';

class BoxScreen extends StatefulWidget {
  const BoxScreen({super.key});

  @override
  State<BoxScreen> createState() => _BoxScreenState();
}

class _BoxScreenState extends State<BoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: mainblackColor, size: 28),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CircleAvatar(
              radius: 41.r,
              backgroundColor: circularColor,
              child: Image.asset('$iconsAssets/man.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //
            SizedBox(height: 20.h),
            //
            ReuseBanner(
              Color: purpleColor,
              title: 'Pay today and save\n200 RS',
              subtitle:
                  'Offer description goes here, Offer\ndescription goes here, Offer\ndescription goes here\n',
            ),
            //
            SizedBox(height: 13.h),
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Your attendance this month ', style: style22main),

                  SizedBox(height: 399.h),
                  ListTile(
                    title: Text('Total tiffins till now', style: style12black),
                    subtitle: Text('47 tiffins', style: style22main),
                    trailing: Text('2700 ₹', style: style32mainblack),
                  ),

                  //
                  SizedBox(height: 22.h),
                  //
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Available Balance', style: style14mainblack),
                        Text('2700 ₹', style: style22green),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'please recharge for zero disturbance service',
                          style: style10mainorange,
                        ),
                        Text('from 3000 ₹', style: style12green),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //
            SizedBox(height: 16.h),

            //
            ReuseBanner(
              Color: mainblackColor,
              title: 'Pay today and save\n200 RS',
              subtitle:
                  'Offer description goes here, Offer\ndescription goes here, Offer\ndescription goes here\n',
            ),

            //
            SizedBox(height: 40.h),
            //
          ],
        ),
      ),
    );
  }
}
