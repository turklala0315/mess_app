import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/auth/login/login_screen.dart';
import 'package:mess_app/core/constant/auth/opt_fatch/opt_fatch_screen.dart';
import 'package:mess_app/core/constant/auth/otp/otp_screen.dart';
import 'package:mess_app/core/constant/auth/register/registeration_screen.dart';
import 'package:mess_app/ui/menu/menu_screen.dart';
import 'package:mess_app/ui/wellcome_screen.dart';
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
          home: RegistrationScreen(),
        );
      },
    );
  }
}
