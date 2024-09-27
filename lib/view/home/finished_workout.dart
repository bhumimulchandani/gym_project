import 'package:flutter/material.dart';
import 'package:gym_project/common/color_extension.dart';
import 'package:gym_project/common_widget/round_button.dart';
import 'package:gym_project/view/main_tab/main_tab_view.dart';

class FinishedWorkout extends StatefulWidget {
  const FinishedWorkout({super.key});

  @override
  State<FinishedWorkout> createState() => _FinishedWorkoutState();
}

class _FinishedWorkoutState extends State<FinishedWorkout> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/img/complete_workout.png",
                height: media.width,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(
                height: 20,
              ),
              Text("Congratulations, You Have Finished Your Workout",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700)),
              const SizedBox(
                height: 20,
              ),
              Text(
                  "Exercise is king and nutrition is queen. Combine the two and you will have a kingdom. ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.grey,
                    fontSize: 12,
                  )),
              const SizedBox(
                height: 8,
              ),
              Text("-Jack Lalanne",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.grey,
                    fontSize: 12,
                  )),
              const Spacer(),
              RoundButton(
                  title: "Back To Home",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainTabView()));
                  }),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
