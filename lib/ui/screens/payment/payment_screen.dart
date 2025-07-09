import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/string.dart';
import 'package:mess_app/core/constant/text_style.dart';
import 'package:mess_app/ui/custom_widgets/banner/reuse_banner.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pureColor,
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
            SizedBox(height: 20),
            ReuseBanner(
              Color: purpleColor,
              title: 'Pay today and save\n200 RS',
              subtitle:
                  'Offer description goes here, Offer\ndescription goes here, Offer\ndescription goes here\n',
            ),
            Column(
              children: [
                //
                SizedBox(height: 29.h),

                //
                ListTile(
                  title: Text('Total tiffins till now', style: style12black),
                  subtitle: Text('47 tiffins', style: style22main),
                  trailing: Text('2700 ₹', style: style32mainblack),
                ),
                ListTile(
                  title: Text('Available Balance', style: style14mainblack),
                  subtitle: Text(
                    'please recharge for zero disturbance service',
                    style: style10mainorange,
                  ),
                  trailing: Text('from 3000 ₹', style: style12green),
                ),
                //
                SizedBox(height: 40.h),
                //
                Text(
                  'Pay to the below UPI number or QR Code from any\npayment app',
                  style: style14black,
                ),
                //
                SizedBox(height: 334.h),
                //
                Text(
                  'Contact Nandu Bhau after the Payment is done',
                  style: style16mainorange,
                ),
                //
                SizedBox(height: 25.h),
                //
                ReuseBanner(
                  Color: greenColor,
                  title: 'Pay today and save\n200 RS',
                  subtitle:
                      'Offer description goes here, Offer\ndescription goes here, Offer\ndescription goes here\n',
                ),
              ],
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
