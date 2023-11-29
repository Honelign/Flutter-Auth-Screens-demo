import 'package:flutter/material.dart';
import 'package:upwork_test_project/constants.dart';
import 'package:upwork_test_project/screens/Auth/opt_page.dart';
import 'package:upwork_test_project/screens/Auth/sign_up.dart';
import 'package:upwork_test_project/strings.dart';
import 'package:upwork_test_project/utils.dart';
import 'package:upwork_test_project/widgets/custom_button.dart';
import 'package:upwork_test_project/widgets/custom_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
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
                      strings.signIn,
                      style: AppTheme.kStitleTextStyle,
                    ),
                  )),
              const SizedBox(
                height: 10,
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
                  text: strings.signInButton,
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <InlineSpan>[
                      TextSpan(
                        text: strings.dontHaveAnAccount,
                        style: AppTheme.kSubStringStyle,
                      ),
                      WidgetSpan(
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpPage()),
                                );
                              },
                              child: Text(
                                " ${strings.create}",
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
