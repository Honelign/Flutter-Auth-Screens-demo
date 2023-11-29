import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:upwork_test_project/constants.dart';
import 'package:upwork_test_project/screens/home/home_page.dart';
import 'package:upwork_test_project/strings.dart';
import 'package:upwork_test_project/utils.dart';
import 'package:upwork_test_project/widgets/custom_button.dart';

class OtpPage extends StatelessWidget {
  OtpPage({super.key});
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
                      strings.otpVerification,
                      style: AppTheme.kStitleTextStyle,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 300,
                  ),
                  child: Text(
                    strings.verificationCodeHasBeenSent,
                    style: AppTheme.kSubStringStyle,
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              OtpTextField(
                borderWidth: 3,
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                numberOfFields: 5,
                fieldWidth: 60,
                enabledBorderColor: AppTheme.kOtpBorderColor,

                borderColor: AppTheme.kBlackText,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      });
                }, // end onSubmit
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
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  bgColor: AppTheme.kPrimaryColor,
                  textColor: Colors.white,
                  text: strings.confirm,
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: strings.didntReceiveTheCode,
                        style: AppTheme.kSubStringStyle,
                      ),
                      TextSpan(
                        text: " ${strings.resend}",
                        style: AppTheme.kSeconndSubStringStyle,
                      ),
                      TextSpan(
                        text: "(${strings.otpTime})",
                        style: AppTheme.kSubStringStyle,
                      ),
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
