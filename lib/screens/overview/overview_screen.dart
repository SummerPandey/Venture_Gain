import 'package:flutter/material.dart';
import 'package:venture_gain/app/app_theme.dart';
import 'package:venture_gain/widgets/pixel_button.dart';
import 'package:venture_gain/widgets/stat_progress_bar.dart';
import 'package:venture_gain/widgets/vg_card.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 110),
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  'Venture\nGain',
                  style: TextStyle(
                    fontSize: 20,
                    height: 1.4,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppTheme.card,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: AppTheme.darkBrown,
                    width: 3,
                  ),
                ),
                child: const Icon(
                  Icons.person,
                  color: AppTheme.darkBrown,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          VgCard(
            child: Column(
              children: [
                const Text(
                  'TODAY STATUS',
                  style: TextStyle(fontSize: 10),
                ),
                const SizedBox(height: 18),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: AppTheme.lightOrange,
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(
                      color: AppTheme.darkBrown,
                      width: 3,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      '🎮',
                      style: TextStyle(fontSize: 56),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                const Text(
                  'Level 1: Building Momentum',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 9),
                ),
              ],
            ),
          ),

          const SizedBox(height: 18),

          const VgCard(
            child: Column(
              children: [
                StatProgressBar(
                  label: 'Food',
                  value: 0.72,
                  trailing: '72%',
                ),
                SizedBox(height: 16),
                StatProgressBar(
                  label: 'Water',
                  value: 0.55,
                  trailing: '55%',
                ),
                SizedBox(height: 16),
                StatProgressBar(
                  label: 'Workout',
                  value: 0.64,
                  trailing: '64%',
                ),
                SizedBox(height: 16),
                StatProgressBar(
                  label: 'Sleep',
                  value: 0.80,
                  trailing: '80%',
                ),
                SizedBox(height: 16),
                StatProgressBar(
                  label: 'Energy',
                  value: 0.68,
                  trailing: '68%',
                ),
              ],
            ),
          ),

          const SizedBox(height: 18),

          VgCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'WEEKLY CHECK',
                  style: TextStyle(fontSize: 10),
                ),
                const SizedBox(height: 14),
                const Text(
                  'You improved in 3 out of 5 areas compared to last week.',
                  style: TextStyle(
                    fontSize: 8,
                    height: 1.8,
                    color: AppTheme.softBrown,
                  ),
                ),
                const SizedBox(height: 18),
                PixelButton(
                  text: 'SCAN UPDATE',
                  icon: Icons.camera_alt,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}