import 'package:flutter/material.dart';

class CutomerFormTextField extends StatelessWidget {
  CutomerFormTextField({super.key});
//text controller
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 307,
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Center(
          child: TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Email Address",
              prefixIcon: Icon(
                Icons.email_outlined,
                color: Colors.black26,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
