import 'package:client/home_page.dart';
import 'package:client/ingame_page.dart';
import 'package:client/login_page.dart';
import 'package:client/settings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: Brightness.light.theme(context),
      darkTheme: Brightness.dark.theme(context),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routerConfig: config,
    );
  }
}

final config = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => HomePage()),
    GoRoute(path: "/in-game", builder: (context, state) => InGamePage()),
    GoRoute(path: "/settings", builder: (context, state) => SettingsPage()),
    GoRoute(path: "/login", builder: (context, state) => LoginPage()),
  ],
);

extension on Brightness {
  ThemeData theme(BuildContext context) {
    return ThemeData(
      brightness: this,
      useMaterial3: true,
      colorSchemeSeed: Colors.indigoAccent,
      textTheme: GoogleFonts.mPlus1TextTheme(Theme.of(context).textTheme),
    );
  }
}
