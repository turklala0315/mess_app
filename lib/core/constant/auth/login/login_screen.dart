import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/auth/otp/otp_screen.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/string.dart';
import 'package:mess_app/core/constant/text_style.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isChecked = false; // State for the checkbox
  final formkey = GlobalKey<FormState>();

  TextEditingController number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF5722), // Orange background
      body: Column(
        children: [
          // Top Section: Orange background with logo and back arrow
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: whiteColor, size: 28),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 58.h),
                Center(
                  child: Column(
                    children: [
                      Image.asset('$iconsAssets/logo.png', scale: 4),
                      SizedBox(height: 8.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.h), // Space between orange top and white card
          // Bottom Section: White card with login elements
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: whiteColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 30.0,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Chandwad's #1 best Homemade\nFood Mess",
                          style: style20,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 47.h),
                      Row(
                        children: [
                          Expanded(child: Divider(color: mainorangeColor)),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Text('Log in or Register', style: style12),
                          ),
                          Expanded(child: Divider(color: mainorangeColor)),
                        ],
                      ),
                      //
                      SizedBox(height: 51.h),
                      //
                      // Phone Number Input
                      Form(
                        key: formkey,
                        child: Column(
                          children: [
                            IntlPhoneField(
                              controller: number,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                fillColor: whiteColor,
                                filled: true,
                                labelText: 'Enter your Phone Number',
                                hintStyle: style18gray,

                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: mainorangeColor,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.r),
                                  ),
                                ),
                              ),
                              initialCountryCode: "india",
                              onChanged: (phone) {},
                            ),
                          ],
                        ),
                      ),

                      // phone number conatiner end
                      SizedBox(height: 18.h),
                      //
                      // Login Button
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OtpScreen(),
                            ),
                          );
                        },
                        child: Container(
                          width: 335.w,
                          height: 58.h,
                          decoration: BoxDecoration(
                            color: mainblackColor,
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(color: borderColor),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Login', style: style18),
                              //
                              SizedBox(width: 3.w),
                              //
                              Image.asset('$iconsAssets/login.png', scale: 4.5),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 18.h),
                      // Checkbox and Terms & Conditions
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 24.w,
                              height: 24.h,
                              child: Checkbox(
                                value: _isChecked,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked = newValue!;
                                  });
                                },
                                activeColor:
                                    mainorangeColor, // Checkbox color when checked
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  text: 'By continuing, you agree to our ',
                                  style: style12darkgray,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Terms of Service\n',
                                      style: style12darkgray,
                                    ),
                                    TextSpan(
                                      text: 'Privacy Policy and Content Policy',
                                      style: style12darkgray,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      // "Need help?" text
                      Align(
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Help & Support', style: style8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
