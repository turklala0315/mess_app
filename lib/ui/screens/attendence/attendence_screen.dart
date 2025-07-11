import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/text_style.dart';
import 'package:mess_app/ui/custom_widgets/reuse_present_absent/reuse_present_absent.dart';

class AttendenceScreen extends StatefulWidget {
  AttendenceScreen({super.key});

  @override
  State<AttendenceScreen> createState() => _AttendenceScreenState();
}

class _AttendenceScreenState extends State<AttendenceScreen> {
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
    'abbas',
  ];

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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total members present\nevening', style: style12),
                Text('80 Full', style: style18mainblack),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('120 Members', style: style22green),
                Text('80 Full', style: style18mainblack),
              ],
            ),
            //
            SizedBox(height: 40.h),
            //
            ReusePresentAbsent(callback: () {}),

            //
            SizedBox(height: 10.h),
            //
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemCount: members.length,
                itemBuilder: (contex, index) {
                  return _buildMemberListItem(members[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  //
  Widget _buildMemberListItem(String name) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
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
                onTap: () {},
                child: Text('see details', style: style12orange),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
