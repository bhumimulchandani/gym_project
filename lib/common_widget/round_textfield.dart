import 'package:flutter/material.dart';
import 'package:gym_project/common/color_extension.dart';

class RoundTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String hintText;
  final String icon;
  final Widget? rigticon;
  final EdgeInsets? margin;
  const RoundTextfield(
      {super.key,
      this.controller,
      this.keyboardType,
      this.obscureText = false,
      this.rigticon,
      required this.hintText,
      required this.icon,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
          color: TColor.lightGrey, borderRadius: BorderRadius.circular(15)),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: hintText,
            suffixIcon: rigticon,
            prefixIcon: Container(
                alignment: Alignment.center,
                height: 15,
                width: 15,
                child: Image.asset(
                  icon,
                  width: 15,
                  height: 15,
                  fit: BoxFit.contain,
                  color: TColor.grey,
                )),
            hintStyle: TextStyle(color: TColor.grey, fontSize: 16)),
      ),
    );
  }
}
