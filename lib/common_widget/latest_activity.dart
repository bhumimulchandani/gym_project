//homepage downward latest workouts row
import 'package:flutter/material.dart';
import 'package:gym_project/common/color_extension.dart';

class LatestActivity extends StatelessWidget {
  final Map wObj;
  const LatestActivity({super.key, required this.wObj});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      // padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      // decoration: BoxDecoration(
      //     color: TColor.white,
      //     borderRadius: BorderRadius.circular(15),
      //     boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2)]),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                wObj["image"].toString(),
                width: 60,
                height: 60,
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
                wObj["title"].toString(),
                style: TextStyle(
                  color: TColor.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500
                ),
              ),
              Text(
                wObj["time"].toString(),
                style: TextStyle(
                  color: TColor.black,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              
            ],
          )),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/img/sub_menu.png",
                width: 12,
                height: 12,
                fit: BoxFit.contain,
              ))
        ],
      ),
    );
  }
}
