import 'package:flutter/material.dart';
import 'package:venture_gain/app/app_theme.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _PageLayout(
      title: 'Venture Gain',
      subtitle: 'Overview',
      emoji: '🎮',
    );
  }
}

class _PageLayout extends StatelessWidget {
  final String title;
  final String subtitle;
  final String emoji;

  const _PageLayout({
    required this.title,
    required this.subtitle,
    required this.emoji,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppTheme.card,
            borderRadius: BorderRadius.circular(28),
            border: Border.all(color: AppTheme.darkBrown, width: 3),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                emoji,
                style: const TextStyle(fontSize: 56),
              ),
              const SizedBox(height: 24),
              const Text(
                'Venture Gain',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              const Text(
                'Overview',
                style: TextStyle(
                  fontSize: 12,
                  color: AppTheme.softBrown,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}