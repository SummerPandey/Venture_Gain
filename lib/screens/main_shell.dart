import 'package:flutter/material.dart';
import 'package:venture_gain/app/app_theme.dart';
import 'package:venture_gain/screens/food_water/food_water_screen.dart';
import 'package:venture_gain/screens/overview/overview_screen.dart';
import 'package:venture_gain/screens/sleep/sleep_screen.dart';
import 'package:venture_gain/screens/workout/workout_screen.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int selectedIndex = 2;

  final List<Widget> pages = const [
    WorkoutScreen(),
    FoodWaterScreen(),
    OverviewScreen(),
    SleepScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(28),
          child: NavigationBar(
            selectedIndex: selectedIndex,
            backgroundColor: AppTheme.card,
            indicatorColor: AppTheme.orange.withValues(alpha: 0.25),
            onDestinationSelected: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.fitness_center),
                label: 'Workout',
              ),
              NavigationDestination(
                icon: Icon(Icons.restaurant),
                label: 'Food',
              ),
              NavigationDestination(
                icon: Icon(Icons.grid_view_rounded),
                label: 'Overview',
              ),
              NavigationDestination(
                icon: Icon(Icons.bedtime),
                label: 'Sleep',
              ),
            ],
          ),
        ),
      ),
    );
  }
}