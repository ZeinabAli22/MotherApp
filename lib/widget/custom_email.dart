import 'package:flutter/material.dart';

class CustomEmail extends StatelessWidget {
  const CustomEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 340,
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Center(
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            onFieldSubmitted: (value) {
              print(value);
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Email Address",
              prefixIcon: Icon(
                Icons.alternate_email_rounded,
                color: Colors.black26,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
