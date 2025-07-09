import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mess_app/core/constant/auth/register/register_screen.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/string.dart';
import 'package:mess_app/core/constant/text_style.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final formkey = GlobalKey<FormState>();

  TextEditingController number = TextEditingController();
  int _counter = 1;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 1) {
        // Prevent decrementing below 1
        _counter--;
      }
    });
  }

  bool _agreedToDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 28, color: mainblackColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter you details for Order completion',
                style: style18pureblack,
              ),
              //
              SizedBox(height: 38.h),

              //
              _buildTextFieldWithLabel('Full Name', 'Rushikesh Hande'),
              //
              SizedBox(height: 14.h),
              //
              _buildTextFieldWithLabel(
                'Delivery Address',
                'Delivery address for tiffin',
                maxLines: 3,
              ),
              //
              SizedBox(height: 14.h),

              //
              Form(
                key: formkey,
                child: Column(
                  children: [
                    IntlPhoneField(
                      obscureText: true,
                      enabled: true,
                      controller: number,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: whiteColor,
                        filled: true,
                        labelText: 'Enter your Phone Number',
                        hintStyle: style18gray,

                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: mainorangeColor),
                          borderRadius: BorderRadius.all(Radius.circular(8.r)),
                        ),
                      ),
                      initialCountryCode: "india",
                      onChanged: (phone) {},
                    ),
                  ],
                ),
              ),
              //
              SizedBox(height: 40.h),

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
              SizedBox(height: 40.h),
              //
              Text('Number of tiffins', style: style12black),
              tiffincounter(context),
              //
              SizedBox(height: 34.h),
              //
              Text(
                'Total Amount to be paid incl. delivery charges',
                style: style12black,
              ),
              //
              SizedBox(height: 5.h),
              //
              Text('120 RS', style: style32green),
              //
              SizedBox(height: 42.h),

              //
              Text('Next step', style: style22),
              //
              SizedBox(height: 11.h),
              //
              Text(
                'Pay to the below UPI number or\nQR Code from any payment app',
                style: style18pureblack,
              ),
              //
              SizedBox(height: 89.h),
              //
              // add a QR code scanner logic here
              //
              Row(
                children: [
                  Checkbox(
                    value: _agreedToDetails,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _agreedToDetails = newValue!;
                      });
                    },
                    activeColor: mainorangeColor,
                  ),
                  Expanded(
                    child: Text(
                      'I agree all the above details as correct and I have paid successfully.',
                      style: style14main,
                    ),
                  ),
                ],
              ),
              //
              SizedBox(height: 28.h),
              //
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
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
                        Text('Register', style: style18),
                        //
                        SizedBox(width: 3.w),
                        //
                        Image.asset('$iconsAssets/tick.png', scale: 4.5),
                      ],
                    ),
                  ),
                ),
              ),
              //
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }

  //
  //
  //
  //
  Widget tiffincounter(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(9.35.r),
        border: Border.all(color: addtiffinsColor), // Subtle border
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // Make the row take minimum space
        children: [
          // Decrement Button
          InkWell(
            onTap: _decrementCounter,
            borderRadius: BorderRadius.circular(6.24.r),
            child: Container(
              width: 40.53.w, // Adjusted size based on image
              height: 40.53.h, // Adjusted size based on image
              decoration: BoxDecoration(
                color: addandminusColor, // Button background color
                borderRadius: BorderRadius.circular(6.24.h),
              ),
              child: Icon(Icons.remove, color: minusColor, size: 24),
            ),
          ),
          //
          SizedBox(width: 18.71.w),
          //

          //
          // Number Display
          Text('$_counter', style: style22),
          //
          SizedBox(width: 15.w),
          //
          // Increment Button
          InkWell(
            onTap: _incrementCounter,
            borderRadius: BorderRadius.circular(6.24.r),
            child: Container(
              width: 40.53.w, // Adjusted size based on image
              height: 40.53.h, // Adjusted size based on image
              decoration: BoxDecoration(
                color: addandminusColor, // Button background color
                borderRadius: BorderRadius.circular(6.24.r),
              ),
              child: Icon(Icons.add, color: minusColor, size: 24),
            ),
          ),
        ],
      ),
    );
  }
}

// *******
//
//
//
//
//
//
Widget _buildLabel(String label) {
  return Padding(
    padding: EdgeInsets.only(bottom: 8.0),
    child: Text(label, style: style12black),
  );
}

//
//
//
//
Widget _buildTextFieldWithLabel(
  String label,

  String hintText, {
  int maxLines = 1,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildLabel(label),
      TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: style14mainblack,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: fulnametextformColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: fulnametextformColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: mainorangeColor, width: 2),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        ),
      ),
    ],
  );
}
