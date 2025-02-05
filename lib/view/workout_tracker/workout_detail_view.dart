import 'package:flutter/material.dart';
import 'package:gym_project/common/color_extension.dart';
import 'package:gym_project/common_widget/exercise_set_section.dart';
import 'package:gym_project/common_widget/icon_title_next_row.dart';
import 'package:gym_project/common_widget/round_button.dart';
import 'package:gym_project/view/workout_tracker/exercises_step_details.dart';
import 'package:gym_project/view/workout_tracker/workout_schedule_view.dart';

class WorkoutDetailView extends StatefulWidget {
  final Map dObj;
  const WorkoutDetailView({super.key, required this.dObj});

  @override
  State<WorkoutDetailView> createState() => _WorkoutDetailViewState();
}

class _WorkoutDetailViewState extends State<WorkoutDetailView> {
  List latestArr = [
    {
      "image": "assets/img/Workout1.png",
      "title": "Fullbody Workout",
      "time": "Today, 03:00pm"
    },
    {
      "image": "assets/img/Workout2.png",
      "title": "Upperbody Workout",
      "time": "June 05, 02:00pm"
    },
  ];
  List youArr = [
    {
      "image": "assets/img/barbell.png",
      "title": "Barbell",
    },
    {
      "image": "assets/img/skipping_rope.png",
      "title": "Skipping Rope",
    },
    {
      "image": "assets/img/bottle.png",
      "title": "Bottle 1 Litres",
    },
  ];

  List exercisesArr = [
    {
      "name": "Set 1",
      "set": [
        {"image": "assets/img/img_1.png", "title": "Warm Up", "value": "05:00"},
        {
          "image": "assets/img/img_2.png",
          "title": "Jumping Jack",
          "value": "12x"
        },
        {"image": "assets/img/img_1.png", "title": "Skipping", "value": "15x"},
        {"image": "assets/img/img_2.png", "title": "Squats", "value": "20x"},
        {
          "image": "assets/img/img_1.png",
          "title": "Arm Raises",
          "value": "00:53"
        },
        {
          "image": "assets/img/img_2.png",
          "title": "Rest and Drink",
          "value": "02:00"
        },
      ]
    },
    {
      "name": "Set 2",
      "set": [
        {"image": "assets/img/img_1.png", "title": "Warm Up", "value": "05:00"},
        {
          "image": "assets/img/img_2.png",
          "title": "Jumping Jack",
          "value": "12x"
        },
        {"image": "assets/img/img_1.png", "title": "Skipping", "value": "15x"},
        {"image": "assets/img/img_2.png", "title": "Squats", "value": "20x"},
        {
          "image": "assets/img/img_1.png",
          "title": "Arm Raises",
          "value": "00:53"
        },
        {
          "image": "assets/img/img_2.png",
          "title": "Rest and Drink",
          "value": "02:00"
        },
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      decoration:
          BoxDecoration(gradient: LinearGradient(colors: TColor.primaryG)),
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: TColor.lightGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    "assets/img/black_btn.png",
                    width: 20,
                    height: 15,
                    fit: BoxFit.contain,
                  ),
                  // child: Icon(Icons.arrow_back_ios, color: TColor.black, size: 25,),
                ),
              ),
              actions: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    height: 15,
                    width: 15,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      // color: TColor.lightGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      "assets/img/more_btn.png",
                      width: 20,
                      height: 15,
                      fit: BoxFit.contain,
                    ),
                    // child: Icon(Icons.arrow_back_ios, color: TColor.black, size: 25,),
                  ),
                ),
              ],
            ),
            SliverAppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
              leadingWidth: 0,
              leading: Container(),
              expandedHeight: media.width * 0.5,
              flexibleSpace: Align(
                // padding: const EdgeInsets.symmetric(horizontal: 20),
                alignment:  Alignment.center,
                widthFactor: 0.5,
                heightFactor: 2,
                // height: media.width * 0.5,
                // width: double.infinity,
                child: Image.asset(
                  "assets/img/detail_top.png",
                  width: media.width * 0.85,
                  height: media.width * 0.8,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ];
        },
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: TColor.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              )),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 4,
                        width: 50,
                        decoration: BoxDecoration(
                            color: TColor.grey,
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.dObj["title"].toString(),
                                  style: TextStyle(
                                      color: TColor.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "${widget.dObj["exercises"].toString()} | ${widget.dObj["time"].toString()} | 320 Calories Burn",
                                  style: TextStyle(
                                    color: TColor.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                "assets/img/fav.png",
                                height: 20,
                                width: 20,
                                fit: BoxFit.contain,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      IconTitleNextRow(
                        icon: "assets/img/time.png",
                        title: "Schedule Workout",
                        time: "5/27, 09:00 AM",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WorkoutScheduleView()));
                        },
                        color: TColor.primaryColor2.withOpacity(0.3),
                      ),
                      SizedBox(
                        height: media.width * 0.02,
                      ),
                      IconTitleNextRow(
                        icon: "assets/img/difficulity.png",
                        title: "Difficulty",
                        time: "Beginner",
                        onPressed: () {},
                        color: TColor.secondaryColor2.withOpacity(0.3),
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "You'll need ",
                            style: TextStyle(
                                color: TColor.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "${youArr.length} | Items",
                                style: TextStyle(
                                  color: TColor.grey,
                                  fontSize: 12,
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.5,
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: youArr.length,
                            itemBuilder: (context, index) {
                              var yObj = youArr[index] as Map? ?? {};
                              return Container(
                                margin: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // margin: const EdgeInsets.all(8),
                                      height: media.width * 0.35,
                                      width: media.width * 0.35,
                                      decoration: BoxDecoration(
                                          color: TColor.lightGrey,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        yObj["image"].toString(),
                                        width: media.width * 0.2,
                                        height: media.width * 0.2,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        yObj["title"].toString(),
                                        style: TextStyle(
                                          color: TColor.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exercises",
                            style: TextStyle(
                                color: TColor.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "${youArr.length} | Sets",
                                style: TextStyle(
                                  color: TColor.grey,
                                  fontSize: 12,
                                ),
                              ))
                        ],
                      ),
                      ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: exercisesArr.length,
                          itemBuilder: (context, index) {
                            var sObj = exercisesArr[index] as Map? ?? {};
                            return ExercisesSetSection(
                              sObj: sObj,
                              onPressed: (obj) {
                                print(obj);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ExercisesStepDetails(
                                      eObj: obj,
                                    ),
                                  ),
                                );
                              },
                            );
                          }),
                      SizedBox(
                        height: media.width * 0.1,
                      ),
                    ],
                  ),
                ),
                SafeArea(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RoundButton(title: "Start Workout", onPressed: () {})
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
