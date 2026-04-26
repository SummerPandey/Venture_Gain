import 'package:flutter/material.dart';
import 'package:venture_gain/app/app_theme.dart';

class VgCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final double borderRadius;

  const VgCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(18),
    this.borderRadius = 28,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        color: AppTheme.card,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: AppTheme.darkBrown,
          width: 3,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x33000000),
            offset: Offset(4, 5),
            blurRadius: 0,
          ),
        ],
      ),
      child: child,
    );
  }
}