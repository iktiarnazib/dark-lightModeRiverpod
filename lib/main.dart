import 'package:darklightmode/pages/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:darklightmode/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTheme = ref.watch(themeProvider);

    return MaterialApp(
      theme: currentTheme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
