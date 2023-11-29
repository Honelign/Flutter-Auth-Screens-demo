import 'package:flutter/material.dart';
import 'package:upwork_test_project/constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  final Function()? onTap;

  const CustomButton({
    super.key,
    required this.text,
    this.bgColor = AppTheme.kPrimaryColor,
    this.textColor = Colors.white,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(AppTheme.kPrimaryColor),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.blue.withOpacity(0.04);
            }
            if (states.contains(MaterialState.focused) ||
                states.contains(MaterialState.pressed)) {
              return Colors.blue.withOpacity(0.12);
            }
            return const Color(0x00000001); // Defer to the widget's default.
          },
        ),
        minimumSize: MaterialStateProperty.all<Size>(const Size(50, 50)),
      ),
      onPressed: onTap,
      child: Text(text, style: AppTheme.kSButtonTextStyle),
    );
  }
}
