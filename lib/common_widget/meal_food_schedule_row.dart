import 'package:flutter/material.dart';
import 'package:gym_project/common/color_extension.dart';
import 'package:gym_project/common/common.dart';

class MealFoodScheduleRow extends StatelessWidget {
  final Map mObj;
  final int index;
  const MealFoodScheduleRow({super.key, required this.mObj, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
      // padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        color: index % 2==0? TColor.primaryColor2.withOpacity(0.4): TColor.secondaryColor2.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: Image.asset(
                      mObj["image"].toString(),
                      width: 40,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                  )),
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mObj["name"].toString(),
                style: TextStyle(
                    color: TColor.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                mObj["time"].toString(),
                style: TextStyle(color: TColor.grey, fontSize: 12),
              ),
              // Text(
              //   mObj["time"].toString(),
              //   style: TextStyle(
              //     color: TColor.black,
              //     fontSize: 12,
              //   ),
              // ),
              const SizedBox(
                height: 4,
              ),
            ],
          )),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/img/next_go.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ))
        ],
      ),
    );
  }
}
