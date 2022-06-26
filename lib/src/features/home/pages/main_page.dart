import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_starter_project/src/features/home/pages/home_page.dart';
import 'package:flutter_starter_project/src/routes/routes.dart';
import 'package:flutter_starter_project/src/translations/locale_keys.g.dart';
import 'package:get_storage/get_storage.dart';

import '../../../core/util/global_variable.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int navBarIndex = 0;

  final List<Widget> screens = const [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navBarIndex,
        elevation: 10,
        onTap: (index) => setState(() {
          navBarIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home,
            ),
            label: LocaleKeys.home.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.person,
            ),
            label: LocaleKeys.about.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.call,
            ),
            label: LocaleKeys.contact.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.settings,
            ),
            label: LocaleKeys.settings.tr(),
          ),
        ],
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
