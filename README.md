# Venture Gain (Flutter prototype)

An early Flutter prototype of Venture Gain, a gamified health tracker with a retro, pixel-style interface.

![Flutter](https://img.shields.io/badge/Flutter-02569B?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?logo=dart&logoColor=white)

> **Status:** superseded. Development continues in [venture_gain_beta](https://github.com/SummerPandey/venture_gain_beta), a React and TypeScript rewrite that builds out real logging, Supabase storage, and AI features on top of this layout.

## Overview

This repo is where the app's navigation and visual style were first worked out. It sets up a four-tab shell (Workout, Food, Overview, Sleep) and a styled Overview dashboard. The dashboard uses placeholder values, and the other three tabs are stubs. Nothing is saved or loaded yet.

## Features

- Bottom navigation bar with four tabs, opening on Overview
- Warm beige and orange theme using the Press Start 2P pixel font (via `google_fonts`)
- Overview dashboard with a "Today Status" card, progress bars for food, water, workout, sleep, and energy, and a weekly check-in card (all sample data)
- Reusable widgets: `VgCard` (bordered card with offset shadow), `StatProgressBar`, and `PixelButton`

## Tech stack

- Flutter with Material 3
- Dart (SDK `^3.11.0`)
- `google_fonts`

Platform folders for Android, iOS, web, macOS, Linux, and Windows come from the default Flutter template.

## Getting started

Requires the [Flutter SDK](https://docs.flutter.dev/get-started/install) with a Dart version that satisfies `^3.11.0`.

```bash
flutter pub get
flutter run              # pick a connected device or simulator
flutter run -d chrome    # run in the browser
```

## Project structure

```
lib/
  main.dart                     App entry point
  app/app_theme.dart            Colors and theme
  screens/
    main_shell.dart             Bottom navigation and tab switching
    overview/                   Overview dashboard
    workout/                    Placeholder
    food_water/                 Placeholder
    sleep/                      Placeholder
  widgets/                      VgCard, StatProgressBar, PixelButton
test/                           Widget test from the Flutter template
```

## Related

- [venture_gain_beta](https://github.com/SummerPandey/venture_gain_beta): the current version of Venture Gain.
