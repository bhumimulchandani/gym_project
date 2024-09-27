import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:gym_project/common/color_extension.dart';
import 'package:gym_project/common_widget/icon_title_next_row.dart';
import 'package:gym_project/common_widget/round_button.dart';

class SleepAddAlarmView extends StatefulWidget {
  final DateTime date;
  const SleepAddAlarmView({super.key, required this.date});

  @override
  State<SleepAddAlarmView> createState() => _SleepAddAlarmViewState();
}

class _SleepAddAlarmViewState extends State<SleepAddAlarmView> {
  bool positive = false;
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
            "Add Alarm",
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
              const SizedBox(
                height: 10,
              ),
              IconTitleNextRow(
                icon: "assets/img/Bed_Add.png",
                title: "Bedtime",
                time: "09:00 PM",
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
                icon: "assets/img/HoursTime.png",
                title: "Hours of Sleep",
                time: "8hours 30minutes",
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
                icon: "assets/img/Repeat.png",
                title: "Repeat",
                time: "Mon to Fri",
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
              // IconTitleNextRow(
              //   icon: "assets/img/repetitions.png",
              //   title: "Custom Weights",
              //   time: "",
              //   onPressed: () {
              //     // Navigator.push(
              //     //     context,
              //     //     MaterialPageRoute(
              //     //         builder: (context) => WorkoutScheduleView()));
              //   },
              //   color: TColor.lightGrey,
              // ),

              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(
                    color: TColor.lightGrey,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/img/Vibrate.png",
                        width: 18,
                        height: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        "Vibrate When Alarm Sound",
                        style: TextStyle(
                          color: TColor.grey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 120,
                    ),
                    SizedBox(
                      height: 30,
                      child: Transform.scale(
                        scale: 0.7,
                        child: CustomAnimatedToggleSwitch<bool>(
                          current: positive,
                          values: const [false, true],
                          spacing: 0.0,
                          indicatorSize: const Size.square(30.0),
                          animationDuration: const Duration(milliseconds: 200),
                          animationCurve: Curves.linear,
                          onChanged: (b) => setState(() => positive = b),
                          iconBuilder: (context, local, global) {
                            return const SizedBox();
                          },
                          cursors: const ToggleCursors(
                              defaultCursor: SystemMouseCursors.click),
                          onTap: (_) => setState(() => positive = !positive),
                          iconsTappable: false,
                          wrapperBuilder: (context, global, child) {
                            return Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                    left: 10.0,
                                    right: 10.0,
                                    height: 20.0,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: TColor.secondaryG),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(50.0)),
                                      ),
                                    )),
                                child,
                              ],
                            );
                          },
                          foregroundIndicatorBuilder: (context, global) {
                            return SizedBox.fromSize(
                              size: const Size(10, 10),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: TColor.white,
                                  // gradient: LinearGradient(colors: TColor.secondaryG,),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50.0)),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black38,
                                        spreadRadius: 0.05,
                                        blurRadius: 1.1,
                                        offset: Offset(0.0, 0.8))
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),
              RoundButton(title: "Add", onPressed: () {}),
              const SizedBox(
                height: 20,
              ),
            ])));
  }
}
