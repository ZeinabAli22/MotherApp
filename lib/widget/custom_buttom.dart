import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtom extends StatelessWidget {
  // const CustomButtom({super.key});
  final String text;
  const CustomButtom({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: 232,
      decoration: BoxDecoration(
        color: Colors.indigoAccent[100],
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, "/choosegender");
          },
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 60),
          child: Text(
            text,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
