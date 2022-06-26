import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get_storage/get_storage.dart';

import 'src/core/util/global_variable.dart';
import 'src/core/util/theme.dart';
import 'src/routes/routes.dart';
import 'src/translations/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      // Set Default Language 
      fallbackLocale: const Locale('en'),
      assetLoader: const CodegenLoader(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    context.setLocale(
      const Locale(
        "en",
      ),
    );
    selectedLanguage = (GetStorage().read('locale') ?? 'en');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        title: 'Flutter Starter Project',
        debugShowCheckedModeBanner: false,
        // Theme config
        themeMode: ThemeMode.system,
        theme: appThemeData[AppTheme.Light],
        darkTheme: appThemeData[AppTheme.Dark],
        // Routes config
        initialRoute: RouteGenerator.mainPage,
        onGenerateRoute: RouteGenerator.generateRoute,
        // Language config
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        locale: context.locale,
      ),
    );
  }
}
