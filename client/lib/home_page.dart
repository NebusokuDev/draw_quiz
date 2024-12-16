import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text("DRAW QUIZ", style: textTheme.displayLarge),
            ),
          ),
          Expanded(
            flex: 5,
            child: Center(
              child: SizedBox(
                height: 100,
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FilledButton(
                      onPressed: () => context.go("/in-game"),
                      child: Text("ゲームスタート"),
                    ),
                    FilledButton(
                      onPressed: () => context.go("/settings"),
                      child: Text("設定"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
