import 'package:flutter/material.dart';
import 'package:venture_gain/app/app_theme.dart';
import 'package:venture_gain/screens/main_shell.dart';

void main() {
  runApp(const VentureGainApp());
}

class VentureGainApp extends StatelessWidget {
  const VentureGainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Venture Gain',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const MainShell(),
    );
  }
}