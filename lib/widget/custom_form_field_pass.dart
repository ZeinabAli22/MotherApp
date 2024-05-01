import 'package:flutter/material.dart';

class CustomFormFieldPass extends StatelessWidget {
  CustomFormFieldPass({super.key});
  //text controller
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 307,
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Center(
          child: TextFormField(
            controller: _passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            onFieldSubmitted: (value) {
              print(value);
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              // labelText: "Email Address",
              hintText: "Password",
              prefixIcon: Icon(
                Icons.lock_outlined,
                color: Colors.black26,
              ),
              suffixIcon: Icon(Icons.remove_red_eye_rounded),
            ),
          ),
        ),
      ),
    );
  }
}
