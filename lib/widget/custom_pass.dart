import 'package:flutter/material.dart';

class CustomPass extends StatelessWidget {
  const CustomPass({super.key});

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
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            onFieldSubmitted: (value) {
              print(value);
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Password",
              prefixIcon: Icon(
                Icons.lock_outline,
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
