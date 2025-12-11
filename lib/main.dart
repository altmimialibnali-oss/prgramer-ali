import 'package:flutter/material.dart';
import 'pages/welcome_page.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/schedule_page.dart';
import 'pages/trainers_page.dart';
import 'pages/workout_plans_page.dart';
import 'pages/nutrition_page.dart';

void main() {
  runApp(const GymApp());
}

class GymApp extends StatelessWidget {
  const GymApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueAccent,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/schedule': (context) => const SchedulePage(),
        '/trainers': (context) => const TrainersPage(),
        '/workouts': (context) => const WorkoutPlansPage(),
        '/nutrition': (context) => const NutritionPage(),
      },
    );
  }
}
