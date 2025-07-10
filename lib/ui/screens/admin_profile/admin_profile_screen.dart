import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/string.dart';
import 'package:mess_app/core/constant/text_style.dart';

class AdminProfileScreen extends StatelessWidget {
  const AdminProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: halfwhiteColor,
      appBar: AppBar(
        backgroundColor: mainorangeColor,
        title: Text('Admin End', style: style22white),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, size: 28, color: purewhiteColor),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text('Shreyas Wani', style: style22main)),
              //
              SizedBox(height: 21.h),
              //
              Container(
                height: 104.h,
                width: 104.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: mainorangeColor, width: 2),
                ),
                child: Image.asset('$dynamicAssets/shreya.png'),
              ),
              //
              SizedBox(height: 20.h),
              //
              _buildDetailRow('Mobile Number', '+91 1234567890'),
              _buildDetailRow('City', 'Pimpalgaon Baswant'),
              _buildDetailRow('Full Name', 'Shreyas Wani'),
              _buildDetailRow('Education or Occupation', 'Engineering'),
              _buildDetailRow('Parent Name', 'Shreyas Wani'),
              _buildDetailRow('Current Address', 'Chandwad'),
              _buildDetailRow('Permanent Address', 'Chandwad'),
              _buildDetailRow('Parent Number', '+91 1234567890'),
              _buildDetailRow('Birth Date', '21-04-2002'),

              //
              SizedBox(height: 26.h),
              //
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 60.h,
                        width: 161.5.w,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          border: Border.all(color: pureblackColor),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                'Half Tiffin',
                                style: style18mainblack,
                              ),
                            ),

                            //
                            SizedBox(width: 5.w),
                            //
                            Image.asset('$iconsAssets/half.png', scale: 4.5),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.h),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 60.h,
                        width: 161.5.w,
                        decoration: BoxDecoration(
                          color: mainorangeColor,

                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: Text('Full Tiffin', style: style18)),

                            //
                            SizedBox(width: 5.w),
                            //
                            Image.asset('$iconsAssets/full.png', scale: 4.5),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //
              SizedBox(height: 21.h),
              //
              GestureDetector(
                onTap: () {},
                child: Center(
                  child: Container(
                    width: 330.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: mainblackColor,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Update Payment', style: style18),
                        //
                        SizedBox(width: 5.w),
                        //
                        Image.asset('$iconsAssets/tick.png', scale: 4.5),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  //
  //
  //

  Widget _buildDetailRow(String title, String value) {
    return Card(
      color: purewhiteColor,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: style12black),
            Text(value, style: style14mainblack),
          ],
        ),
      ),
    );
  }
}
