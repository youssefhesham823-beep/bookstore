import 'package:bookstore/core/widgets/app_text_field.dart';
import 'package:bookstore/gen/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ForgotForm extends StatelessWidget {
  const ForgotForm({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      hintText: LocaleKeys.enterEmail.tr(),
    );
  }
}