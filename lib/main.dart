import 'package:book_app/constant.dart';
import 'package:book_app/features/splash/presentation/views/splash_view.dart';
// import 'package:book_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:splash_view/source/presentation/pages/pages.dart';
// import 'package:splash_view/source/presentation/presentation.dart';
// import 'package:splash_view/source/presentation/widgets/done.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(Typography.whiteCupertino),
        scaffoldBackgroundColor: kPrimaryColor,
        colorScheme: const ColorScheme.dark(),
      ),
      home: const SplashViewbody(),
    );
  }
}
