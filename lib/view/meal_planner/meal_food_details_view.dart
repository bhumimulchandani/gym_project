import 'package:flutter/material.dart';
import 'package:gym_project/common/color_extension.dart';
import 'package:gym_project/common_widget/find_eat_cell.dart';
import 'package:gym_project/common_widget/meal_category_cell.dart';
import 'package:gym_project/common_widget/meal_recommend_cell.dart';
import 'package:gym_project/common_widget/popular_meal_row.dart';
import 'package:gym_project/common_widget/today_meal_row.dart';
import 'package:gym_project/view/meal_planner/food_info_details_view.dart';

class MealFoodDetailsView extends StatefulWidget {
  final Map eObj;
  const MealFoodDetailsView({super.key, required this.eObj});

  @override
  State<MealFoodDetailsView> createState() => _MealFoodDetailsViewState();
}

class _MealFoodDetailsViewState extends State<MealFoodDetailsView> {
  List<int> showingTooltipOnSpots = [21];

  TextEditingController txtSearch = TextEditingController();

  List categoryArr = [
    {
      "name": "Salad",
      "image": "assets/img/c_1.png",
    },
    {
      "name": "Cake",
      "image": "assets/img/c_2.png",
    },
    {
      "name": "Pie",
      "image": "assets/img/c_3.png",
    },
    {
      "name": "Smoothies",
      "image": "assets/img/c_4.png",
    },
    {
      "name": "Salad",
      "image": "assets/img/c_1.png",
    },
    {
      "name": "Cake",
      "image": "assets/img/c_2.png",
    },
    {
      "name": "Pie",
      "image": "assets/img/c_3.png",
    },
    {
      "name": "Smoothies",
      "image": "assets/img/c_4.png",
    },
  ];

  List popularArr = [
    {
      "name": "Blueberry Pancakes",
      "image": "assets/img/f_1.png",
      "b_image":"assets/img/pancake_1.png",
      "size": "Medium",
      "time": "30mins",
      "kcal": "230kCal"
    },
    {
      "name": "Salmon Nigiri",
      "image": "assets/img/f_2.png",
      "b_image":"assets/img/nigiri.png",
      "size": "Medium",
      "time": "20mins",
      "kcal": "120kCal"
    },
  ];

  List recommendArr = [
    {
      "name": "Honey Pancake",
      "image": "assets/img/rd_1.png",
      "size": "Easy",
      "time": "30mins",
      "kcal": "180kCal"
    },
    {
      "name": "Canai Bread",
      "image": "assets/img/m_4.png",
      "size": "Easy",
      "time": "20mins",
      "kcal": "230kCal"
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
              margin: const EdgeInsets.all(8),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: TColor.lightGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                "assets/img/black_btn.png",
                width: 15,
                height: 15,
                fit: BoxFit.contain,
              ),
              // child: Icon(Icons.arrow_back_ios, color: TColor.black, size: 25,),
            ),
          ),
          title: Text(
            widget.eObj["name"].toString(),
            style: TextStyle(
                color: TColor.black, fontSize: 16, fontWeight: FontWeight.w700),
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(8),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    color: TColor.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                        offset: Offset(0, 1),
                      ),
                    ]),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      controller: txtSearch,
                      decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          prefixIcon: Image.asset(
                            "assets/img/search.png",
                            width: 25,
                            height: 25,
                          ),
                          hintText: "Search Pancake"),
                    )),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      width: 1,
                      height: 25,
                      color: TColor.grey.withOpacity(0.3),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/img/Filter.png",
                        width: 25,
                        height: 25,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "Category",
                      style: TextStyle(
                          color: TColor.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              // SizedBox(
              //   height: media.width * 0.05,
              // ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryArr.length,
                    itemBuilder: (context, index) {
                      var cObj = categoryArr[index] as Map? ?? {};
                      return MealCategoryCell(cObj: cObj, index: index);
                    }),
              ),

              // SizedBox(
              //   height: media.width * 0.05,
              // ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Recommendation\nfor Diet",
                  style: TextStyle(
                      color: TColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
              // SizedBox(
              //   height: media.width * 0.05,
              // ),
              SizedBox(
                height: media.width * 0.55,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    scrollDirection: Axis.horizontal,
                    // shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: recommendArr.length,
                    itemBuilder: (context, index) {
                      var fObj = recommendArr[index] as Map? ?? {};
                      return MealRecommendCell(
                        fObj: fObj,
                        index: index,
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Popular",
                  style: TextStyle(
                      color: TColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
              // SizedBox(
              //   height: media.width * 0.05,
              // ),
              SizedBox(
                height: media.width * 0.55,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    // scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: popularArr.length,
                    itemBuilder: (context, index) {
                      var fObj = popularArr[index] as Map? ?? {};
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        FoodInfoDetailsView(dObj: fObj, mObj: widget.eObj,)));
                          },
                          child: PopularMealRow(mObj: fObj));
                    }),
              ),
            ],
          ),
        ));
  }
}
