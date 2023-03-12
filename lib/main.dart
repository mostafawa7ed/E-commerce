import 'package:ecommerce/test.dart';
import 'package:ecommerce/view/screen/language.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/constant/colors.dart';
import 'core/localization/changelanguage.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InitialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController Controller = Get.put(LocalController());
    return GetMaterialApp(
      locale: Controller.language,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'flutter ecommerce',
      theme: AppTheme().themeData,
      home: const Language(),
      //home: const Test(),
      routes: routes,

      //initialRoute: "language",
    );
  }
}

class AppTheme {
  ThemeData themeData = ThemeData(
    fontFamily: "PlayfairDisplay",
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      bodySmall: TextStyle(color: AppColors.grey, fontSize: 15),
      displayLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 25, color: AppColors.black),
    ),
  );
}
