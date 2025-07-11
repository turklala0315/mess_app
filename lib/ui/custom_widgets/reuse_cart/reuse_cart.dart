import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/text_style.dart';

class ReuseCart extends StatelessWidget {
  final String name;
  final String address;
  final String mobile;
  final String tiffinType;
  final int tiffinQty;
  final bool isHalfTiffin;
  VoidCallback? callback;
  ReuseCart({
    super.key,
    required this.name,
    required this.address,
    required this.mobile,
    required this.tiffinType,
    required this.tiffinQty,
    required this.isHalfTiffin,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: searchcontainerColor, width: 2),
      ),
      child: Card(
        color: purewhiteColor,

        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(name, style: style22main),

                  TextButton(
                    onPressed: () {
                      callback!();
                    },
                    child: Text("Cancel", style: style12red),
                  ),
                ],
              ),
              //
              SizedBox(height: 16.h),
              //
              _buildDetailRow('Address', address),
              _buildDetailRow('Mobile', mobile),
              _buildDetailRow('Tiffin', tiffinType),
              _buildDetailRow('Tiffins Qty.', tiffinQty.toString()),

              //
              SizedBox(height: 16.h),
              //
              Align(
                alignment: Alignment.bottomRight,
                child: isHalfTiffin
                    ? Icon(
                        Icons
                            .check_circle_outline, // Outline check for Half Tiffin
                        color: lightgrayColor,
                        size: 30,
                      )
                    : Icon(
                        Icons.check_circle, // Filled check for Full Tiffin
                        color: greenColor,
                        size: 30,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 90, // Fixed width for titles
            child: Text(title, style: style14bold),
          ),
          Expanded(child: Text(value, style: style10mainblack)),
        ],
      ),
    );
  }
}
