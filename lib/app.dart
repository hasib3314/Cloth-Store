import 'package:clot_store/presentation/ui/screens/onboarding/splash_screen.dart';
import 'package:clot_store/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'controller_binders.dart';

class ClothStoreApp extends StatelessWidget {
  const ClothStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      initialBinding: ControllerBinders(),
      theme: ThemeData(
        fontFamily: 'Circular Std',
        colorSchemeSeed: AppColors.themeColor,
        scaffoldBackgroundColor: Colors.white,
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Colors.white,
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: const Color(0xFFF4F4F4),
          filled:true ,
          border: _outlineInputBorder(),
          enabledBorder: _outlineInputBorder(),
          focusedBorder: _outlineInputBorder(),
          errorBorder: _outlineInputBorder(Colors.red),
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400
          ),
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(

              backgroundColor: AppColors.themeColor,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              textStyle: const TextStyle(fontSize: 16),
              fixedSize: const Size.fromWidth(double.maxFinite)),

        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              foregroundColor: AppColors.themeColor,
              textStyle: const TextStyle(fontSize: 16)),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500
          )
        )
      ),
    );
  }

  OutlineInputBorder _outlineInputBorder([Color? color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? AppColors.themeColor, width: 1),

    );
  }
}