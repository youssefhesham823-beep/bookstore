import 'package:bookstore/core/widgets/app_botton.dart';
import 'package:bookstore/feature/auth/ui/passchanged/pass_changed_screen.dart';
import 'package:bookstore/feature/auth/ui/resetpass/widgets/creat_password_form.dart';
import 'package:bookstore/gen/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/arrow_back_botton.dart';

class ResetPassScreen extends StatelessWidget {
  const ResetPassScreen({super.key});

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
                  LocaleKeys.createNewPassword.tr(),
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  LocaleKeys.createNewPasswordSubtitle.tr(),
                  style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                ),
                SizedBox(height: 30.h),
                CreatePasswordForm(),
                SizedBox(height: 30.h),
                AppBotton(
                  text: LocaleKeys.resetPassword.tr(),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PassChangedScreen()),
                    );
                  },
                ),
              ],
          ),
        ),
      ),
      )
    );
  }
}
