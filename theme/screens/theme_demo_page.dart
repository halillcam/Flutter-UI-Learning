import 'package:flutter/material.dart';

class ThemeDemoPage extends StatelessWidget {
  const ThemeDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Theme Demo')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Baslik 1 ", style: textTheme.headlineLarge),
            const SizedBox(height: 10),
            Text("Baslik 2 ", style: textTheme.headlineMedium),
            const SizedBox(height: 20),
            Text(
              "Bu normal bir body text i Theme sayesinde renk ve boyut otomatik geliyor.",
              style: textTheme.bodyLarge,
            ),
            const SizedBox(height: 10),
            Text("caption / kucuk acıklama metni", style: textTheme.bodySmall),
            const SizedBox(height: 24),
            ElevatedButton(onPressed: () {}, child: const Text("Devam et")),

            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorScheme.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: colorScheme.primary),
              ),
              child: Text(
                "Bu Container primary rengin %10 opaklığını kullanıyor",
                style: textTheme.bodyLarge?.copyWith(color: colorScheme.primary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
