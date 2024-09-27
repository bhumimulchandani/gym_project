import 'package:flutter/material.dart';
import 'package:gym_project/common/color_extension.dart';
import 'package:gym_project/common_widget/round_button.dart';
import 'package:gym_project/common_widget/round_textfield.dart';
import 'package:gym_project/view/login/complete_profile_view.dart';
import 'package:gym_project/view/login/login_view.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  bool ischeck = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  "Hey there,",
                  style: TextStyle(color: TColor.grey, fontSize: 16),
                ),
                Text(
                  "Create an Account",
                  style: TextStyle(
                      color: TColor.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: media.height * 0.05,
                ),
                const RoundTextfield(
                  hintText: "First Name",
                  icon: "assets/img/user_text.png",
                ),
                SizedBox(
                  height: media.height * 0.04,
                ),
                const RoundTextfield(
                  hintText: "Last Name",
                  icon: "assets/img/user_text.png",
                ),
                SizedBox(
                  height: media.height * 0.04,
                ),
                const RoundTextfield(
                  hintText: "Email",
                  icon: "assets/img/email.png",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: media.height * 0.04,
                ),
                RoundTextfield(
                  hintText: "Password",
                  icon: "assets/img/lock.png",
                  obscureText: true,
                  rigticon: TextButton(
                    onPressed: () {},
                    child: Container(
                        alignment: Alignment.center,
                        height: 15,
                        width: 15,
                        child: Image.asset(
                          "assets/img/show_password.png",
                          width: 15,
                          height: 15,
                          fit: BoxFit.contain,
                          color: TColor.grey,
                        )),
                  ),
                ),
                // SizedBox(
                //   height: media.width * 0.04,
                // ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            ischeck = !ischeck;
                          });
                        },
                        icon: Icon(
                          ischeck
                              ? Icons.check_box_outlined
                              : Icons.check_box_outline_blank_outlined,
                          color: TColor.grey,
                          size: 20,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                          "By continuing you accept our Privacy Policy and\nTerm to Use",
                          style:
                              TextStyle(color: TColor.grey, fontSize: 10)),
                    )
                  ],
                ),
                SizedBox(height: media.width * 0.4),
                RoundButton(
                    title: "Register",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CompleteProfileView()));
                    }),
                SizedBox(height: media.width * 0.04),

                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: TColor.grey.withOpacity(0.5),
                        width: double.maxFinite,
                      ),
                    ),
                    Text(" Or ",
                        style: TextStyle(color: TColor.grey, fontSize: 10)),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: TColor.grey.withOpacity(0.5),
                        width: double.maxFinite,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: media.width * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: TColor.white,
                          border: Border.all(
                            width: 1,
                            color: TColor.grey.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          "assets/img/google.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(width: media.width * 0.04),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: TColor.white,
                          border: Border.all(
                            width: 1,
                            color: TColor.grey.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          "assets/img/facebook.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: media.width * 0.04),

                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginView()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Already have an account?",
                          style: TextStyle(
                            color: TColor.black,
                            fontSize: 14,
                          )),
                      Text("Login",
                          style: TextStyle(
                              color: TColor.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700))
                    ],
                  ),
                ),
                SizedBox(height: media.width * 0.04),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
