import 'package:bookstore/core/theme/app_colors.dart';
import 'package:bookstore/core/widgets/app_botton.dart';
import 'package:bookstore/core/widgets/arrow_back_botton.dart';
import 'package:bookstore/feature/auth/ui/login/login_screen.dart';
import 'package:bookstore/feature/auth/ui/register/widgets/register_form.dart';
import 'package:bookstore/gen/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                ArrowBackBotton(),
                SizedBox(height: 30.h),
                Text(
                  LocaleKeys.helloRegister.tr(),
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 32.h),
                RegisterForm(),
                SizedBox(height: 30.h),
                AppBotton(
                  text: LocaleKeys.Register.tr(),
                  onPressed: () {},
                ),
                SizedBox(height: 184.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.alreadyHaveAccount.tr(),
                      style: TextStyle(color: Colors.grey, fontSize: 13.sp),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => LoginScreen()),
                        );
                      },
                      child: Text(
                        LocaleKeys.loginNow.tr(),
                        style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 27.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}