import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_project/common/color_extension.dart';
import 'package:gym_project/common/common.dart';
import 'package:gym_project/common_widget/icon_title_next_row.dart';
import 'package:gym_project/common_widget/round_button.dart';

class AddScheduleView extends StatefulWidget {
  final DateTime date;
  const AddScheduleView({super.key, required this.date});

  @override
  State<AddScheduleView> createState() => _AddScheduleViewState();
}

class _AddScheduleViewState extends State<AddScheduleView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
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
                "assets/img/closed_btn.png",
                width: 20,
                height: 15,
                fit: BoxFit.contain,
              ),
              // child: Icon(Icons.arrow_back_ios, color: TColor.black, size: 25,),
            ),
          ),
          title: Text(
            "Add Schedule",
            style: TextStyle(
                color: TColor.black, fontSize: 16, fontWeight: FontWeight.w700),
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
                  color: TColor.lightGrey,
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
        backgroundColor: TColor.white,
        body: Container(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Image.asset(
                    "assets/img/date.png",
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    dateToString(widget.date, formatStr: "E, dd MMMM yyyy"),
                    style: TextStyle(
                      color: TColor.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Time",
                style: TextStyle(
                    color: TColor.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: media.width * 0.35,
                child: CupertinoDatePicker(
                  onDateTimeChanged: (newDate) {},
                  initialDateTime: DateTime.now(),
                  use24hFormat: false,
                  minuteInterval: 1,
                  mode: CupertinoDatePickerMode.time,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Details Workout",
                style: TextStyle(
                    color: TColor.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              IconTitleNextRow(
                icon: "assets/img/choose_workout.png",
                title: "Choose Workout",
                time: "Upperbody",
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => WorkoutScheduleView()));
                },
                color: TColor.lightGrey,
              ),
              const SizedBox(
                height: 10,
              ),
              IconTitleNextRow(
                icon: "assets/img/difficulity.png",
                title: "Difficulty",
                time: "Beginner",
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => WorkoutScheduleView()));
                },
                color: TColor.lightGrey,
              ),
              const SizedBox(
                height: 10,
              ),
              IconTitleNextRow(
                icon: "assets/img/repetitions.png",
                title: "Custom Repetition",
                time: "",
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => WorkoutScheduleView()));
                },
                color: TColor.lightGrey,
              ),
              const SizedBox(
                height: 10,
              ),
              IconTitleNextRow(
                icon: "assets/img/repetitions.png",
                title: "Custom Weights",
                time: "",
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => WorkoutScheduleView()));
                },
                color: TColor.lightGrey,
              ),
              const Spacer(),
              RoundButton(title: "Save", onPressed: () {}),
              const SizedBox(
                height: 20,
              ),
            ])));
  }
}
