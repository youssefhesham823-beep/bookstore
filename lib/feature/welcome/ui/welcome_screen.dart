import 'package:bookstore/core/widgets/app_botton.dart';
import 'package:bookstore/feature/auth/ui/login/login_screen.dart';
import 'package:bookstore/feature/auth/ui/register/register_screen.dart';
import 'package:bookstore/gen/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.alifCaesarRizqiPratamaLoUlSOXL81cUnsplash1.image().image,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    if (context.locale.languageCode == "ar") {
                      context.setLocale(Locale("en"));
                    } else {
                      context.setLocale(Locale("ar"));
                    }
                  },
                  icon: Icon(Icons.language),
                ),
              ],
            ),
            SizedBox(height: 105.h),
            Assets.images.splashImage.image(),
            SizedBox(height: 20.h),
            Expanded(
              child: Text(
                LocaleKeys.orderNow.tr(),
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
            AppBotton(
              text: LocaleKeys.Login.tr(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => LoginScreen()),
                );
              },
            ),
            SizedBox(height: 15.h),
            AppBotton(
              text: LocaleKeys.Register.tr(),
              backgroundColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => RegisterScreen()),
                );
              },
            ),
            SizedBox(height: 94.h),
          ],
        ),
      ),
    );
  }
}