import 'package:flutter/material.dart';

import 'package:upwork_test_project/constants.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  const CustomTextField({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: AppTheme.kFieldColor,
          ),
          // Make rounded corners
          borderRadius: BorderRadius.circular(15)),
      child: Row(children: [
        Container(
            width: 80,
            height: 50,
            decoration: const BoxDecoration(
                color: AppTheme.kFieldColor,
                // Make rounded corners
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            child: Center(
              child: Text(
                widget.title,
                style: AppTheme.kSfieldTextStyle,
              ),
            )),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextField(
            controller: TextEditingController(),
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintStyle: TextStyle(color: AppTheme.kTitleFieldTextColor),
            ),
          ),
        )
      ]),
    );
  }
}
