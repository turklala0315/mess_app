import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/auth/login/login_screen.dart';
import 'package:mess_app/core/constant/auth/opt_fatch/opt_fatch_screen.dart';
import 'package:mess_app/core/constant/auth/otp/otp_screen.dart';
import 'package:mess_app/core/constant/auth/register/register_screen.dart';
import 'package:mess_app/ui/details/details_screen.dart';
import 'package:mess_app/ui/details_for_registeration/details_for_reggisteration.dart';
import 'package:mess_app/ui/home/home_screen.dart';
import 'package:mess_app/ui/menu/menu_screen.dart';
import 'package:mess_app/ui/order/order_screen.dart';
import 'package:mess_app/ui/rate_cart/rate_cart_screen.dart';
import 'package:mess_app/ui/wellcome/wellcome_screen.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(enabled: !kReleaseMode, builder: (context) => const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Update according to your design
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          home: HomeScreen(),
        );
      },
    );
  }
}
