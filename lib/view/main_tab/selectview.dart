import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_project/common_widget/round_button.dart';
import 'package:gym_project/common_widget/workout_row.dart';
import 'package:gym_project/view/meal_planner/meal_planner_view.dart';
import 'package:gym_project/view/sleep_tracker/sleep_tracker_view.dart';
import 'package:gym_project/view/workout_tracker/workout_tracker_view.dart';

class Selectview extends StatelessWidget {
  const Selectview({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundButton(
                title: "Workout Tracker",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WorkoutTrackerView()));
                }),
            const SizedBox(
              height: 15,
            ),
            RoundButton(
                title: "Meal Tracker",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MealPlannerView()));
                }),
            const SizedBox(
              height: 15,
            ),
            RoundButton(
                title: "Sleep Tracker",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SleepTrackerView()));
                }),
          ],
        ),
      ),
    );
  }
}
