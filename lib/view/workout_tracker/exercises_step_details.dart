import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_project/common/color_extension.dart';
import 'package:gym_project/common_widget/round_button.dart';
import 'package:gym_project/common_widget/step_detail_row.dart';
import 'package:readmore/readmore.dart';

class ExercisesStepDetails extends StatefulWidget {
  final Map eObj;
  const ExercisesStepDetails({super.key, required this.eObj});

  @override
  State<ExercisesStepDetails> createState() => _ExercisesStepDetailsState();
}

class _ExercisesStepDetailsState extends State<ExercisesStepDetails> {
  List stepArr = [
    {
      "no": "01",
      "title": "Spread Your Arms",
      "detail":
          "To make the gestures feel more relaxed,\nstretch your arms as you start this\nmovement. No bending of hands."
    },
    {
      "no": "02",
      "title": "Rest at The Toe",
      "detail":
          "The basis of this movement is jumping. Now, what needs to be considered as that\nyou have to use the tips of your feet."
    },
    {
      "no": "03",
      "title": "Adjust Foot Movement",
      "detail":
          "Jumping Jack is not just an ordinary\njump. But, you also have to pay close\nattention to leg movements."
    },
    {
      "no": "04",
      "title": "Clapping Both Hands",
      "detail":
          "This cannot be taken lightly. You see,\nwithout realizing it, the clapping of your\nhands helps you to keep your rhythm\nwhile doing the Jumping Jack."
    },
  ];

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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: media.width * 0.43,
                    width: media.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: TColor.primaryG,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(
                      "assets/img/video_temp.png",
                      width: media.width,
                      height: media.width * 0.43,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    width: media.width,
                    height: media.width * 0.43,
                    decoration: BoxDecoration(
                        color: TColor.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/img/Play.png",
                        width: 30,
                        height: 30,
                      ))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                widget.eObj["title"].toString(),
                style: TextStyle(
                    color: TColor.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "Easy | 390 Calories Burn",
                style: TextStyle(
                  color: TColor.grey,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Descriptions",
                style: TextStyle(
                    color: TColor.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 4,
              ),
              ReadMoreText(
                'A jumping jack, also known as a star jump and called a\nside-straddle hop in the US military, is a physical\njumping exercise performed by jumping to a position\nwith the legs spread wide.',
                trimMode: TrimMode.Line,
                trimLines: 4,
                colorClickableText: TColor.black,
                trimCollapsedText: ' Read more...',
                trimExpandedText: ' Read Less',
                style: TextStyle(
                  color: TColor.grey,
                  fontSize: 12,
                ),
                moreStyle:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "How To Do It",
                    style: TextStyle(
                        color: TColor.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "${stepArr.length} | Sets",
                        style: TextStyle(
                          color: TColor.grey,
                          fontSize: 12,
                        ),
                      ))
                ],
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: stepArr.length,
                  itemBuilder: ((context, index) {
                    var sObj = stepArr[index] as Map? ?? {};
                    return StepDetailRow(
                      sObj: sObj,
                      isLast: stepArr.last == sObj,
                    );
                  })),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Custom Repetitions",
                style: TextStyle(
                    color: TColor.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 150,
                child: CupertinoPicker.builder(
                    itemExtent: 40,
                    selectionOverlay: Container(
                      width: double.maxFinite,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: TColor.grey.withOpacity(0.3),
                                  width: 1),
                              bottom: BorderSide(
                                  color: TColor.grey.withOpacity(0.2),
                                  width: 1))),
                    ),
                    onSelectedItemChanged: (index) {},
                    childCount: 60,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/img/burn.png",
                            width: 15,
                            height: 15,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            " ${(index + 1) * 15} Calories Burn",
                            style: TextStyle(color: TColor.grey, fontSize: 10),
                          ),
                          Text(
                            " ${index + 1}",
                            style: TextStyle(
                                color: TColor.grey,
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            " times",
                            style: TextStyle(color: TColor.grey, fontSize: 16),
                          )
                        ],
                      );
                    }),
              ),
              RoundButton(title: "Save", elevation: 0, onPressed: () {}),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
