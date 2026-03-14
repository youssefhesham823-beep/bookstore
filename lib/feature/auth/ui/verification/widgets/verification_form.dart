import 'package:bookstore/core/widgets/app_text_field.dart';
import 'package:bookstore/gen/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationForm extends StatelessWidget {
  const VerificationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        5,
            (index) => SizedBox(
          width: 50.w,
          child: AppTextField(
            hintText: "",
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
          ),
        ),
      ),
    );
  }
}