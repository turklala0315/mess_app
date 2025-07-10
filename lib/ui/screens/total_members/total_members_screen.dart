import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/text_style.dart';

class TotalMembersScreen extends StatefulWidget {
  const TotalMembersScreen({super.key});

  @override
  State<TotalMembersScreen> createState() => _TotalMembersScreenState();
}

class _TotalMembersScreenState extends State<TotalMembersScreen> {
  final List<String> members = [
    'Shreyas Wani',
    'Rushikesh Hande',
    'Ganesh Salunke',
    'Nandu Jadhav',
    'Prajwal Shinde',
    'Tejas Jadhav',
    'Pharmacy 1',
    'Pharmacy 2',
    'Engineering 1',
    'Engineering 2',
    'Engineering 3',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: halfwhiteColor,
      body: Column(
        children: [
          Container(
            height: 165.h,
            width: double.infinity,
            color: mainorangeColor,
            child: Center(child: Text('Admin End', style: style22white)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //
                  SizedBox(height: 42.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Members', style: style22bold),
                      Text('209', style: style32green),
                    ],
                  ),
                  //
                  SizedBox(height: 35.h),
                  //
                  searchtextfield(),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: members.length,
              itemBuilder: (context, index) {
                return _buildMemberListItem(members[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget searchtextfield() {
    return TextField(
      decoration: InputDecoration(
        fillColor: purewhiteColor,
        filled: true,
        hintText: 'Search Member name',
        hintStyle: TextStyle(color: darkgrayColor),
        prefixIcon: Icon(Icons.search, color: minusColor),
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
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      ),
    );
  }

  //
  //
  Widget _buildMemberListItem(String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        color: purewhiteColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
          side: BorderSide(
            color: searchcontainerColor,
            width: 1,
          ), // Light border
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: style16mainblack),
              GestureDetector(
                onTap: () {
                  ;
                },
                child: Text('see details', style: style12orange),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
