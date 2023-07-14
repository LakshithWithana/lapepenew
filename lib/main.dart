import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lapepenew/home_page.dart';
import 'package:lapepenew/shared/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 730),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'La Pepe',
          theme: ThemeData(
            textTheme: GoogleFonts.pangolinTextTheme(),
            colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
            useMaterial3: true,
          ),
          home: const HomePage(),
        );
      },
    );
  }
}
