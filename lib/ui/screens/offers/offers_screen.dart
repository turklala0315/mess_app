import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mess_app/core/constant/auth_field_decoration.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/string.dart';
import 'package:mess_app/core/constant/text_style.dart';
import 'package:mess_app/ui/custom_widgets/banner/reuse_banner.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({super.key});

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
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

  String? _selectedOfferPage;

  TextEditingController offertitle = TextEditingController();
  TextEditingController offersubtitle = TextEditingController();

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text('Publish New Offer/Ads', style: style22main),
                  ),
                  //
                  SizedBox(height: 20.h),

                  //
                  Container(
                    height: 168.h,
                    width: 336.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/static_assets/upload.png"),
                      ),
                    ),
                  ),
                  //
                  SizedBox(height: 31.h),

                  //
                  Center(child: Text('Or', style: style14bold)),
                  //
                  SizedBox(height: 27.h),

                  //
                  Text('Offer Title', style: style14black),
                  //
                  SizedBox(height: 15.h),
                  //
                  offertitletextfield(),
                  //
                  SizedBox(height: 15.h),
                  //
                  Text('Offer Subtitle', style: style14black),
                  //
                  SizedBox(height: 15.h),
                  //
                  TextField(
                    maxLines: 3,

                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 100,
                      ),

                      fillColor: purewhiteColor,
                      filled: true,
                      hintText: 'Type your offer title',
                      hintStyle: TextStyle(color: darkgrayColor),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: BorderSide(color: searchcontainerColor),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: BorderSide(color: searchcontainerColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: BorderSide(
                          color: mainorangeColor,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  //
                  SizedBox(height: 15.h),
                  //
                  Text('Offer Page', style: style14black),
                  //

                  //
                  Row(
                    children: [
                      _buildOfferPageRadio('Home'),
                      _buildOfferPageRadio('Box'),
                      _buildOfferPageRadio('Register'),
                      _buildOfferPageRadio('Payment'),
                    ],
                  ),
                  //
                  SizedBox(height: 27.h),
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
                            Text('Publish Offer', style: style18),
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
                  SizedBox(height: 57.h),
                  //
                  Text('Current Offers', style: style14black),
                ],
              ),
            ),
            ReuseBanner(
              Color: greenColor,
              title: 'Pay today and save\n200 RS',
              subtitle:
                  'Offer description goes here, Offer\ndescription goes here, Offer\ndescription goes here',
            ),
            //
            SizedBox(height: 10.h),

            //
            InkWell(
              onTap: () {},
              child: Image.asset(
                '$iconsAssets/trash.png',
                scale: 4.5,
                alignment: Alignment.bottomRight,
              ),
            ),

            //
            SizedBox(height: 20.h),

            //
            ReuseBanner(
              Color: brownColor,
              title: 'Pay today and save\n200 RS',
              subtitle:
                  'Offer description goes here, Offer\ndescription goes here, Offer\ndescription goes here',
            ),
            //
            SizedBox(height: 10.h),

            //
            InkWell(
              onTap: () {},
              child: Image.asset(
                '$iconsAssets/trash.png',
                scale: 4.5,
                alignment: Alignment.bottomRight,
              ),
            ),
            //
            SizedBox(height: 20.h),

            //
          ],
        ),
      ),
    );
  }

  //
  //
  Widget offertitletextfield() {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 100),

        fillColor: purewhiteColor,
        filled: true,
        hintText: 'Type your offer title',
        hintStyle: TextStyle(color: darkgrayColor),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: BorderSide(color: searchcontainerColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: BorderSide(color: searchcontainerColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: BorderSide(color: mainorangeColor, width: 2),
        ),
      ),
    );
  }

  //
  //
  //
  Widget _buildOfferPageRadio(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Radio<String>(
          value: title,
          groupValue: _selectedOfferPage,
          onChanged: (String? value) {
            setState(() {
              _selectedOfferPage = value;
            });
          },
          activeColor: mainblackColor,
          splashRadius: 0,

          // All active colors are orange
        ),
        Text(title, style: style14black),
      ],
    );
  }
}
