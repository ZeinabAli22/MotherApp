import 'package:flutter/material.dart';

class CustomName extends StatelessWidget {
  const CustomName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 340,
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Center(
          child: TextFormField(
            onFieldSubmitted: (value) {
              print(value);
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              // OutlineInputBorder(),
              // labelText: "Email Address",
              hintText: "Full Name",
              prefixIcon: Icon(
                Icons.person_sharp,
                color: Colors.black26,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
