import 'package:flutter/material.dart';
import 'package:upwork_test_project/constants.dart';
import 'package:upwork_test_project/screens/Auth/login_page.dart';
import 'package:upwork_test_project/screens/Auth/opt_page.dart';
import 'package:upwork_test_project/strings.dart';
import 'package:upwork_test_project/utils.dart';
import 'package:upwork_test_project/widgets/custom_button.dart';
import 'package:upwork_test_project/widgets/custom_field.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final Strings strings = Strings();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: withSpacing(
            spacing: 15,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Center(
                    child: Text(
                      strings.signUp,
                      style: AppTheme.kStitleTextStyle,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomTextField(
                  title: strings.name,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomTextField(
                  title: strings.email,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomTextField(
                  title: strings.mobile,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OtpPage()),
                    );
                  },
                  bgColor: AppTheme.kPrimaryColor,
                  textColor: Colors.white,
                  text: strings.signUpButton,
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <InlineSpan>[
                      TextSpan(
                        text: strings.alreadyHaveAnAccount,
                        style: AppTheme.kSubStringStyle,
                      ),
                      WidgetSpan(
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()),
                                );
                              },
                              child: Text(
                                " ${strings.signInatSignUp}",
                                style: AppTheme.kSeconndSubStringStyle,
                              )))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
