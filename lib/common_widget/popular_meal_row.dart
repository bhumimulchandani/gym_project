import 'package:flutter/material.dart';
import 'package:gym_project/common/color_extension.dart';
import 'package:gym_project/common/common.dart';

class PopularMealRow extends StatelessWidget {
  final Map mObj;
  const PopularMealRow({super.key, required this.mObj});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: TColor.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2)]),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                mObj["image"].toString(),
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              )),
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
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "${mObj["size"]}|${mObj["time"]}|${mObj["kcal"]}",
                style: TextStyle(
                  color: TColor.grey,
                  fontSize: 12,
                ),
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
                "assets/img/next_icon.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ))
        ],
      ),
    );
  }
}
