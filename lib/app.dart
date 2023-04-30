import 'package:altyn/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AmianApp extends StatelessWidget {
  const AmianApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.ubuntuTextTheme(),
        colorScheme: const ColorScheme.light(primary: Colors.redAccent),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showSelectedLabels: false,
          showUnselectedLabels: false,
        )
      ),
      home: const HomePage(),
    );
  }
}
