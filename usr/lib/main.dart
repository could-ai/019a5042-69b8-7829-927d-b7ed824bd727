import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/home_screen.dart';

void main() {
  runApp(const SpykillerApp());
}

class SpykillerApp extends StatelessWidget {
  const SpykillerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spykiller',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF1E3A8A),
        scaffoldBackgroundColor: const Color(0xFFF0F4F8),
        colorScheme: const ColorScheme(
          primary: Color(0xFF1E3A8A), // Deep Blue
          secondary: Color(0xFF64748B), // Slate Gray
          surface: Colors.white,
          background: Color(0xFFF0F4F8),
          error: Color(0xFFDC2626), // Red
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
          // Custom colors
          tertiary: Color(0xFF16A34A), // Green for Safe
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E3A8A),
          foregroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF1E3A8A),
          unselectedItemColor: Color(0xFF64748B),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
