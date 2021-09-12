import 'package:dean_institute_mobile_app/pages/category_select_page.dart';
import 'package:dean_institute_mobile_app/pages/home_page.dart';
import 'package:dean_institute_mobile_app/pages/sign_up_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dean_institute_mobile_app/utility/constants.dart' as constants;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Image.asset("assets/images/logo_with_text.png"),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 20.w),
                        labelText: "Email",
                        border: OutlineInputBorder(),
                        labelStyle: GoogleFonts.lato(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp
                        )
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 20.w),
                          labelText: "Password",
                          border: OutlineInputBorder(),
                          labelStyle: GoogleFonts.lato(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp
                          )
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            print("Forgot password button clicked");
                          },
                          child: Text(
                            "Forgot Password?",
                            style: GoogleFonts.lato(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CategorySelector()));
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 36.w, vertical: 16.h)),
                          child: Text(
                            "Log in",
                            style: GoogleFonts.lato(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "or",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          fontSize: 14.sp,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
                        ),
                        onPressed: () {
                          print("Login with Google button clicked!!");
                        },
                        child: Text(
                          "Login with Google",
                          style: GoogleFonts.lato(
                              fontSize: 16.sp, color: Colors.grey),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "No account? Get started",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          fontSize: 14.sp,
                          color: Colors.grey,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.lato(fontSize: 12.sp),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
