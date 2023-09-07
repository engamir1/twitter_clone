import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/features/auth/view/signup_view.dart';
import 'package:twitter_clone/features/auth/widgets/auth_field.dart';
import 'package:twitter_clone/themes/pallete.dart';

import '../../../common/rounded_btn.dart';
import '../../../constants/UIconstanst.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static route() => MaterialPageRoute(builder: (context) {
        return const LoginView();
      });

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final appbar = UIconstants.appBar();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              AuthField(controller: emailController, hintText: "Enter Email.."),
              const SizedBox(height: 22),
              AuthField(
                  controller: passController, hintText: "Enter Password.."),
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.topRight,
                child: RoundedSmallBtn(
                  ontap: () {},
                  label: "Done",
                  textcolor: Pallete.backgroundColor,
                  color: Pallete.whiteColor,
                ),
              ),
              const SizedBox(height: 40),
              RichText(
                  text: TextSpan(
                text: "Dont have an account? ",
                style: const TextStyle(color: Pallete.whiteColor, fontSize: 16),
                children: [
                  TextSpan(
                      text: " SignUP",
                      style: const TextStyle(
                          color: Pallete.blueColor, fontSize: 16),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(context, SignUpView.route());
                        }),
                ],
              )),
            ]),
          ),
        ),
      ),
    );
  }
}
