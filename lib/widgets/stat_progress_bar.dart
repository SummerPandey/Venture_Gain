import 'package:flutter/material.dart';
import 'package:venture_gain/app/app_theme.dart';

class StatProgressBar extends StatelessWidget {
  final String label;
  final double value;
  final String trailing;

  const StatProgressBar({
    super.key,
    required this.label,
    required this.value,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    final clampedValue = value.clamp(0.0, 1.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: const TextStyle(fontSize: 9),
              ),
            ),
            Text(
              trailing,
              style: const TextStyle(
                fontSize: 8,
                color: AppTheme.softBrown,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          height: 18,
          decoration: BoxDecoration(
            color: AppTheme.lightOrange.withValues(alpha: 0.35),
            borderRadius: BorderRadius.circular(99),
            border: Border.all(
              color: AppTheme.darkBrown,
              width: 2,
            ),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: clampedValue,
            child: Container(
              decoration: BoxDecoration(
                color: AppTheme.orange,
                borderRadius: BorderRadius.circular(99),
              ),
            ),
          ),
        ),
      ],
    );
  }
}