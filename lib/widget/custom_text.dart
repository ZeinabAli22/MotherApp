import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 300,
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Center(
          child: TextFormField(
            onFieldSubmitted: (value) {
              print(value);
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Type Your Child Name",
            ),
          ),
        ),
      ),
    );
  }
}
