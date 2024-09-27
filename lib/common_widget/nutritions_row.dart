import 'package:flutter/material.dart';
import 'package:gym_project/common/color_extension.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

class NutritionsRow extends StatelessWidget {
  final Map nObj;
  const NutritionsRow({super.key, required this.nObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var val = double.tryParse(nObj["value"].toString()) ?? 1;
    var maxVal = double.tryParse(nObj["max_value"].toString()) ?? 1;

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                nObj["title"].toString(),
                style: TextStyle(
                    color: TColor.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                nObj["image"].toString(),
                width: 15,
                height: 15,
              ),
              const Spacer(),
              Text(
                "${nObj["value"].toString()} | ${nObj["unit_name"].toString()}",
                style: TextStyle(
                    color: TColor.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          SimpleAnimationProgressBar(
            height: 10,
            width: media.width - 30,
            backgroundColor: Colors.grey.shade100,
            foregrondColor: Colors.purple,
            // ratio: wObj["progress"] as double? ?? 0.0,
            ratio: val / maxVal,
            direction: Axis.horizontal,
            curve: Curves.fastLinearToSlowEaseIn,
            duration: const Duration(seconds: 3),
            borderRadius: BorderRadius.circular(7.5),
            gradientColor: LinearGradient(
                colors: TColor.primaryG,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight),
          ),
        ],
      ),
    );
  }
}
