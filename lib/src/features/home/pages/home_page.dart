import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_starter_project/src/translations/locale_keys.g.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

import '../../../core/util/global_variable.dart';
import '../../../core/util/logger.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.home.tr()),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setLocale('en', context);
              },
              child: Text(LocaleKeys.english.tr()),
            ),
            SizedBox(
              height: 20.h,
            ),
            ElevatedButton(
              onPressed: () {
                setLocale('ar', context);
              },
              child: Text(LocaleKeys.arabic.tr()),
            ),
          ],
        ),
      ),
    );
  }

  setLocale(String locale, BuildContext context) {
    GetStorage().write('locale', locale);
    selectedLanguage = locale;
    context.setLocale(Locale(locale));
    setState(() {});
  }
}
