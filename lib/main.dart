import 'package:flutter/material.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' as shadcn;

import 'home_page.dart';

void main() {
  runApp(const WisataApp());
}

class WisataApp extends StatelessWidget {
  const WisataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pink Travel',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFFF9FC),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE84393),
          surface: const Color(0xFFFFF9FC),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFF30232A)),
          bodyMedium: TextStyle(color: Color(0xFF30232A)),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFF9FC),
          foregroundColor: Color(0xFF30232A),
          surfaceTintColor: Colors.transparent,
        ),
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: WidgetStateProperty.resolveWith((states) {
            final selected = states.contains(WidgetState.selected);
            return TextStyle(
              fontSize: 11,
              fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
              color: selected
                  ? const Color(0xFFE84393)
                  : const Color(0xFF95838D),
            );
          }),
        ),
      ),
      builder: (context, child) => shadcn.Theme(
        data: shadcn.ThemeData(
          colorScheme: shadcn.ColorSchemes.lightZinc.copyWith(
            primary: () => const Color(0xFFE84393),
            primaryForeground: () => Colors.white,
            ring: () => const Color(0xFFE84393),
          ),
        ),
        child: child ?? const SizedBox.shrink(),
      ),
      home: const HomePage(),
    );
  }
}
