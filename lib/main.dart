import 'package:dean_institute_mobile_app/pages/login_page.dart';
import 'package:dean_institute_mobile_app/pages/welcome_page.dart';
import 'package:dean_institute_mobile_app/utility/app_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}
//checking some git functions
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 720),
      builder: ()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dean Institute',
        theme: ThemeData(
          primarySwatch: Palette.palette,
        ),
        home: WelcomePage(),
      ),
    );
  }
}
