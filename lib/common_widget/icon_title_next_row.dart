import 'package:flutter/material.dart';
import 'package:gym_project/common/color_extension.dart';

class IconTitleNextRow extends StatelessWidget {
  final String icon;
  final String title;
  final String time;
  final VoidCallback onPressed;
  final Color color;
  const IconTitleNextRow(
      {super.key,
      required this.icon,
      required this.title,
      required this.time,
      required this.onPressed,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 30,
              height: 30,
              alignment: Alignment.center,
              child: Image.asset(
                icon,
                width: 18,
                height: 18,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: TColor.grey,
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(
              width: 120,
              child: Text(
                time,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: TColor.grey,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            SizedBox(
                width: 25,
                height: 25,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 25,
                    height: 25,
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/img/p_next.png",
                      width: 10,
                      height: 10,
                    ),
                  ),
                  
                ))
          ],
        ),
      ),
    );
  }
}
