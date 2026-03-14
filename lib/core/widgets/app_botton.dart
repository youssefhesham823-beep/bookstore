import 'package:bookstore/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBotton extends StatelessWidget {
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final String text;

  const AppBotton({super.key, this.backgroundColor, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 19.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: backgroundColor != null ? Border.all(color: Colors.black) : null,
          color: backgroundColor ?? AppColors.mainColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: backgroundColor == null ? Colors.white : Colors.black,
            fontSize: 15.sp,
          ),
        ),
      ),
    );
  }
}