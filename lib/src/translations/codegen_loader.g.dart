// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "home": "Home",
  "about": "About",
  "contact": "Contact",
  "settings": "Settings",
  "about_us": "About Us",
  "english": "English",
  "arabic": "Arabic"
};
static const Map<String,dynamic> ar = {
  "home": "مسكن",
  "about": "عن",
  "contact": "اتصال",
  "settings": "إعدادات",
  "about_us": "معلومات عنا",
  "english": "الإنجليزية",
  "arabic": "العربية"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ar": ar};
}
