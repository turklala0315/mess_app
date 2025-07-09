import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mess_app/core/constant/auth/register/register_screen.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/string.dart';
import 'package:mess_app/core/constant/text_style.dart';

class DetailsForReggisteration extends StatefulWidget {
  DetailsForReggisteration({super.key});

  @override
  State<DetailsForReggisteration> createState() =>
      _DetailsForReggisterationState();
}

class _DetailsForReggisterationState extends State<DetailsForReggisteration> {
  //  String? _selectedGender;

  DateTime? _selectedDate;

  bool _agreedToDetails = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime(2002, 1, 1), // Default to 2002
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  final formkey = GlobalKey<FormState>();

  TextEditingController number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: mainblackColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Enter you details for Registration', style: style18pureblack),
            //
            SizedBox(height: 38.h),

            // Full Name
            _buildTextFieldWithLabel('Full Name', 'Rushikesh Hande'),
            //
            SizedBox(height: 14.h),
            //

            // Education or Occupation
            _buildTextFieldWithLabel(
              'Education or Occupation',
              'Current field of study/Occupation',
            ),
            SizedBox(height: 14.h),

            // Parent Name
            _buildTextFieldWithLabel('Parent Name', 'Parent Full Name'),
            SizedBox(height: 14.h),

            // Current Address
            _buildTextFieldWithLabel(
              'Current Address',
              'Current address for tiffin',
              maxLines: 3,
            ),
            SizedBox(height: 14.h),

            // Permanent Address
            _buildTextFieldWithLabel(
              'Permanent address',
              'Permanent address',
              maxLines: 3,
            ),
            SizedBox(height: 14.h),

            // Phone Number Input
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
            // phone number conatiner end
            //
            SizedBox(height: 14.h),

            // Birth Date
            _buildLabel('Birth date'),
            GestureDetector(
              onTap: () => _selectDate(context),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: fulnametextformColor),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _selectedDate == null
                          ? '21-04-2002' // Placeholder from image
                          : '${_selectedDate!.day.toString().padLeft(2, '0')}-${_selectedDate!.month.toString().padLeft(2, '0')}-${_selectedDate!.year}',
                      style: style14gray,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 17.h),

            // Agreement Checkbox
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
                Text(
                  'I agree all the above details as correct',
                  style: style14main,
                ),
              ],
            ),
            SizedBox(height: 33.5.h),

            // Buttons: Half Tiffin and Full Tiffin
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
                            child: Text('Half Tiffin', style: style18mainblack),
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
            SizedBox(height: 10.h),
            //
            TextButton(
              onPressed: () {},
              child: Text('Price', style: style14orangecolr),
            ),
            //
            SizedBox(height: 30.h),

            // Register Button
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
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String label) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Text(label, style: style12black),
    );
  }

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
}
