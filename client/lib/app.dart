import 'package:flutter/material.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: Brightness.light.theme(),
      darkTheme: Brightness.dark.theme(),
      themeMode: ThemeMode.light,
    );
  }
}

extension on Brightness {
  ThemeData theme() {
    return ThemeData(
      brightness: this,
      useMaterial3: true,
      colorSchemeSeed: Colors.indigoAccent,
    );
  }
}
