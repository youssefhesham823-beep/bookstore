import 'package:bookstore/core/theme/app_colors.dart';
import 'package:bookstore/core/widgets/app_botton.dart';
import 'package:bookstore/core/widgets/arrow_back_botton.dart';
import 'package:bookstore/feature/auth/ui/forgotpass/forgot_pass_screen.dart';
import 'package:bookstore/feature/auth/ui/login/widgets/forgot_password.dart';
import 'package:bookstore/feature/auth/ui/login/widgets/login_form.dart';
import 'package:bookstore/feature/auth/ui/login/widgets/social_botton.dart';
import 'package:bookstore/feature/auth/ui/register/register_screen.dart';
import 'package:bookstore/gen/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                SizedBox(height: 29.h),
                Text(
                  LocaleKeys.welcomeBack.tr(),
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.h),
                LoginForm(),
                SizedBox(height: 13.h),
                ForgotPassword(onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ForgotPassScreen()),
                  );
                }),
                SizedBox(height: 30.h),
                AppBotton(
                  text: LocaleKeys.Login.tr(),
                  onPressed: () {},
                ),
                SizedBox(height: 34.h),
                Row(
                  children: [
                    Expanded(child: Divider(color: Color(0xFFE8ECF4))),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(LocaleKeys.or.tr(), style: TextStyle(color: Colors.grey, fontSize: 13.sp)),
                    ),
                    Expanded(child: Divider(color: Color(0xFFE8ECF4))),
                  ],
                ),
                SizedBox(height: 21.h),
                SocialButton(
                  icon: Icons.g_mobiledata,
                  label: LocaleKeys.signInWithGoogle.tr(),
                  onPressed: () {},
                ),
                SizedBox(height: 15.h),
                SocialButton(
                  icon: Icons.apple,
                  label: LocaleKeys.signInWithApple.tr(),
                  onPressed: () {},
                ),
                SizedBox(height: 84.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.dontHaveAccount.tr(),
                      style: TextStyle(color: Colors.grey, fontSize: 13.sp),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => RegisterScreen()),
                        );
                      },
                      child: Text(
                        LocaleKeys.registerNow.tr(),
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