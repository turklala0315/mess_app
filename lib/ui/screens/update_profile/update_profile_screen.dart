import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/string.dart';
import 'package:mess_app/core/constant/text_style.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  File? _image;
  Uint8List? _webImage;
  // for web
  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      if (kIsWeb) {
        final bytes = await pickedFile.readAsBytes();
        setState(() {
          _webImage = bytes;
        });
      } else {
        setState(() {
          _webImage = null;
        });
      }
    }
  }

  //
  //

  DateTime? _selectedDate;

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

  final parentnumberformkey = GlobalKey<FormState>();
  final mobilenumberformkey = GlobalKey<FormState>();

  TextEditingController mobilenumber = TextEditingController();
  TextEditingController parentnumber = TextEditingController();

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
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Update Profile', style: style18pureblack),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              SizedBox(height: 38.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: lightgrayColor,
                          backgroundImage: _image != null
                              ? FileImage(_image!)
                              : _webImage != null
                              ? MemoryImage(_webImage!)
                              : null,
                          child: (_image == null && _webImage == null)
                              ? Icon(
                                  Icons.person,
                                  size: 70,
                                  color: darkgrayColor,
                                )
                              : null,
                        ),
                      ),

                      InkWell(
                        onTap: _pickImage,
                        child: Image.asset('$iconsAssets/edit.png', scale: 4),
                      ),
                    ],
                  ),
                ],
              ),
              //
              SizedBox(height: 38.h),
              //
              Text('Basic Details', style: style18pureblack),
              //
              SizedBox(height: 10.h),

              Form(
                key: mobilenumberformkey,
                child: Column(children: [phonenumberfield('Mobile Number')]),
              ),
              //
              SizedBox(height: 10.h),

              //

              // Education or Occupation
              _buildTextFieldWithLabel('City', 'Pimpalgaon Baswant'),
              //
              SizedBox(height: 29.h),
              //

              // Parent Name
              _buildTextFieldWithLabel('Full Name', 'Rushikesh Hande'),
              //
              SizedBox(height: 14.h),

              // Current Address
              _buildTextFieldWithLabel(
                'Education or Occupation',
                'Engineering',
              ),
              //
              SizedBox(height: 14.h),

              // Permanent Address
              _buildTextFieldWithLabel('Parent Name', 'Rushikesh Hande'),
              //
              SizedBox(height: 14.h),
              //
              _buildTextFieldWithLabel(
                'Current Address',
                'Chandwad',
                maxLines: 3,
              ),

              //
              SizedBox(height: 14.h),
              //
              _buildTextFieldWithLabel(
                'Permanent address',
                'Chandwad',
                maxLines: 3,
              ),
              //
              SizedBox(height: 14.h),
              //
              Form(
                key: parentnumberformkey,
                child: Column(children: [phonenumberfield('Parent Number')]),
              ),

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

              //
              SizedBox(height: 30.h),

              // Register Button
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
                        Text('Update', style: style18),
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
      ),
    );
  }

  //
  //

  Widget phonenumberfield(String label) {
    return IntlPhoneField(
      obscureText: true,
      enabled: true,
      controller: mobilenumber,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        fillColor: whiteColor,
        filled: true,
        labelText: label,
        hintStyle: style18gray,

        border: OutlineInputBorder(
          borderSide: BorderSide(color: mainorangeColor),
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
        ),
      ),
      initialCountryCode: "india",
      onChanged: (phone) {},
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
