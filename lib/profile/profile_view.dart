import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:gym_project/common/color_extension.dart';
import 'package:gym_project/common_widget/round_button.dart';
import 'package:gym_project/common_widget/setting_row.dart';
import 'package:gym_project/common_widget/title_subtitle_cell.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool positive = false;

  List accountArr = [
    {"image": "assets/img/p_personal.png", "name": "Personal Data", "tag": "1"},
    {"image": "assets/img/p_achi.png", "name": "Achievment", "tag": "2"},
    {
      "image": "assets/img/p_activity.png",
      "name": "Activity History",
      "tag": "3"
    },
    {
      "image": "assets/img/p_workout.png",
      "name": "Workout Progress",
      "tag": "4"
    },
  ];

  List otherArr = [
    {"image": "assets/img/p_contact.png", "name": "Contact Us", "tag": "5"},
    {"image": "assets/img/p_privacy.png", "name": "Privacy Policy", "tag": "6"},
    {"image": "assets/img/p_setting.png", "name": "Setting", "tag": "7"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.white,
        centerTitle: true,
        elevation: 0,
        leadingWidth: 0,
        title: Text(
          "Profile",
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
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Image.asset(
                              "assets/img/profile_icon.png",
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
                            Text("Himanshu Sharma",
                                style: TextStyle(
                                    color: TColor.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                            Text("Lose a Fat Program",
                                style: TextStyle(
                                  color: TColor.grey,
                                  fontSize: 12,
                                )),
                          ],
                        )),
                        SizedBox(
                            width: 90,
                            height: 30,
                            child: RoundButton(
                                title: "Edit",
                                type: RoundButtonType.bgGradient,
                                fontsize: 12,
                                fontWeight: FontWeight.w400,
                                onPressed: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             ActivityTrackerView()));
                                }))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      children: [
                        Expanded(
                            child: TitleSubtitleCell(
                          title: "180cm",
                          subtitle: "Height",
                        )),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child: TitleSubtitleCell(
                          title: "50kg",
                          subtitle: "Weight",
                        )),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child: TitleSubtitleCell(
                          title: "22yo",
                          subtitle: "Age",
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                            color: TColor.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(color: Colors.black12, blurRadius: 2)
                            ]),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Account",
                                  style: TextStyle(
                                      color: TColor.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700)),
                              const SizedBox(
                                height: 8,
                              ),
                              ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: accountArr.length,
                                  itemBuilder: (context, index) {
                                    var iObj = accountArr[index] as Map? ?? {};
                                    return SettingRow(
                                      icon: iObj["image"].toString(),
                                      title: iObj["name"].toString(),
                                      onPressed: () {},
                                    );
                                  })
                            ])),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                            color: TColor.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(color: Colors.black12, blurRadius: 2)
                            ]),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Notification",
                                  style: TextStyle(
                                      color: TColor.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700)),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                height: 30,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/img/p_notification.png",
                                      height: 15,
                                      width: 15,
                                      fit: BoxFit.contain,
                                    ),
                                    const SizedBox(width: 15),
                                    Expanded(
                                      child: Text("Pop-up Notification",
                                          style: TextStyle(
                                              color: TColor.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                    CustomAnimatedToggleSwitch<bool>(
                                      current: positive,
                                      values: const [false, true],
                                      spacing: 0.0,
                                      indicatorSize: const Size.square(30.0),
                                      animationDuration:
                                          const Duration(milliseconds: 200),
                                      animationCurve: Curves.linear,
                                      onChanged: (b) =>
                                          setState(() => positive = b),
                                      iconBuilder: (context, local, global) {
                                        return const SizedBox();
                                      },
                                      cursors: const ToggleCursors(
                                          defaultCursor:
                                              SystemMouseCursors.click),
                                      onTap: (_) =>
                                          setState(() => positive = !positive),
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
                                                    gradient: LinearGradient(colors: TColor.secondaryG),
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                50.0)),
                                                  ),
                                                )),
                                            child,
                                          ],
                                        );
                                      },
                                      foregroundIndicatorBuilder:
                                          (context, global) {
                                        return SizedBox.fromSize(
                                          size: const Size(10, 10),
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: TColor.white,
                                              // gradient: LinearGradient(colors: TColor.secondaryG,),
                                              borderRadius:
                                                  const BorderRadius.all(
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
                                    // Image.asset(
                                    //   "assets/img/p_next.png",
                                    //   height: 12,
                                    //   width: 12,
                                    //   fit: BoxFit.contain,
                                    // )
                                  ],
                                ),
                              ),
                            ])),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                            color: TColor.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(color: Colors.black12, blurRadius: 2)
                            ]),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Account",
                                  style: TextStyle(
                                      color: TColor.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700)),
                              const SizedBox(
                                height: 8,
                              ),
                              ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  itemCount: accountArr.length,
                                  itemBuilder: (context, index) {
                                    var iObj = accountArr[index] as Map? ?? {};
                                    return SettingRow(
                                      icon: iObj["image"].toString(),
                                      title: iObj["name"].toString(),
                                      onPressed: () {},
                                    );
                                  }),
                            ]))
                  ]))),
    );
  }
}
