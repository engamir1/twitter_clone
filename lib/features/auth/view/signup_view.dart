import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/common/rounded_btn.dart';
import 'package:twitter_clone/constants/constants.dart';
import 'package:twitter_clone/features/auth/view/login_view.dart';
import 'package:twitter_clone/features/auth/widgets/auth_field.dart';
import 'package:twitter_clone/themes/theme.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});
  static route() => MaterialPageRoute(builder: (context) {
        return const SignUpView();
      });

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
                  label: "SignUp",
                  textcolor: Pallete.backgroundColor,
                  color: Pallete.whiteColor,
                ),
              ),
              const SizedBox(height: 40),
              RichText(
                  text: TextSpan(
                text: "Allready have an account? ",
                style: const TextStyle(color: Pallete.whiteColor, fontSize: 16),
                children: [
                  TextSpan(
                      text: " logIn",
                      style: const TextStyle(
                          color: Pallete.blueColor, fontSize: 16),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(context, LoginView.route());
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
