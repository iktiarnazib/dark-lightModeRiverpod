import 'package:darklightmode/components/box.dart';
import 'package:darklightmode/components/button.dart';
import 'package:darklightmode/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  void onToggle() {
    {
      if (ref.read(themeProvider) == lightMode) {
        ref.read(themeProvider.notifier).state = darkMode;
      } else {
        ref.read(themeProvider.notifier).state = lightMode;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Box(
              color: Theme.of(context).colorScheme.secondary,
              child: Button(
                ontap: onToggle,
                color: Theme.of(context).colorScheme.tertiary,
                textColor: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
