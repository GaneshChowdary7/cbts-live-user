import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const CBTSLiveApp());
}

class CBTSLiveApp extends StatelessWidget {
  const CBTSLiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CBTS Live',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: const Color(0xFF6A11CB),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF6A11CB),
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF6A11CB),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 30,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey.shade100,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 20,
          ),
        ),

        fontFamily: "Roboto",
      ),

      home: LoginScreen(),
    );
  }
}