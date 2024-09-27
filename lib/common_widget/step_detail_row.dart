//workout tracker downward details workouts-sets
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:gym_project/common/color_extension.dart';

class StepDetailRow extends StatelessWidget {
  final Map sObj;
  final bool isLast;
  const StepDetailRow({super.key, required this.sObj, this.isLast = false});

  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 25,
          child: Text(
            sObj["no"].toString(),
            style: TextStyle(
              color: TColor.secondaryColor1,
              fontSize: 14,
            ),
          ),
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: TColor.secondaryColor1,
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: Container(
                    // margin: const EdgeInsets.symmetric(vertical: 4),
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      border: Border.all(color: TColor.white, width: 3),
                      borderRadius: BorderRadius.circular(9),
                    ),
                  )),
              if (!isLast)
                DottedDashedLine(
                  height: 80,
                  width: 0,
                  axis: Axis.vertical,
                  dashColor: TColor.secondaryColor1,
                )
            ]),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sObj["title"].toString(),
                style: TextStyle(
                  color: TColor.black,
                  fontSize: 14,
                ),
              ),
              Text(
                sObj["detail"].toString(),
                style: TextStyle(
                  color: TColor.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
