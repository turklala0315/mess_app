import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess_app/core/constant/auth/login/login_screen.dart';
import 'package:mess_app/ui/wellcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ScreenUtilInit(
        designSize: const Size(412, 826),
        minTextAdapt: true,
        splitScreenMode: true,

        // Use your constants
        builder: (context, child) => LoginScreen(),
      ),
    );
  }
}
