import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/colors.dart';
import 'package:mess_app/core/constant/text_style.dart';
import 'package:mess_app/ui/custom_widgets/reuse_active_order_btn/reuse_active_order_btn.dart';
import 'package:mess_app/ui/custom_widgets/reuse_cart/reuse_cart.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 21),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Todays Orders', style: style22main),
                  Text('10 Full', style: style18mainblack),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '5 Half',
                    style: style18mainblack,
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              //
              SizedBox(height: 13.h),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReuseActiveOrderBtn(
                    btnname: 'Active orders',
                    callback: () {},
                  ),
                  ReuseActiveOrderBtn(btnname: 'Cancelled', callback: () {}),
                  ReuseActiveOrderBtn(btnname: 'History', callback: () {}),
                ],
              ),
              //
              SizedBox(height: 35.h),

              //
              ReuseCart(
                name: 'Shreyas Wani',
                address:
                    'Davkhar Nagar, tal. Chandwad, Dist, Nashik\nState. Maharashtra, Country, India\nDavkhar Nagar, tal. Chandwad, Dist, Nashik\nState. Maharashtra, Country, India',
                mobile: '+91 1234567890',
                tiffinType: 'Full',
                tiffinQty: 2,
                isHalfTiffin: true,
              ),
              //
              SizedBox(height: 13.h),

              //
              ReuseCart(
                name: 'Shreyas Wani',
                address:
                    'Davkhar Nagar, tal. Chandwad, Dist, Nashik\nState. Maharashtra, Country, India\nDavkhar Nagar, tal. Chandwad, Dist, Nashik\nState. Maharashtra, Country, India',
                mobile: '+91 1234567890',
                tiffinType: 'Full',
                tiffinQty: 2,
                isHalfTiffin: true,
              ),
              //
              SizedBox(height: 13.h),

              //
              ReuseCart(
                name: 'Shreyas Wani',
                address:
                    'Davkhar Nagar, tal. Chandwad, Dist, Nashik\nState. Maharashtra, Country, India\nDavkhar Nagar, tal. Chandwad, Dist, Nashik\nState. Maharashtra, Country, India',
                mobile: '+91 1234567890',
                tiffinType: 'Full',
                tiffinQty: 2,
                isHalfTiffin: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// 
// 

