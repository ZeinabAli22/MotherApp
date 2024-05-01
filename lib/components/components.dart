import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget defultCategory({
  required String title,
  required String svgSrc,
  required Color background,
  //  Function function = () {},
}) =>
    Container(
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 13),
            blurRadius: 17,
            spreadRadius: -23,
          ),
        ],
      ),
      child: MaterialButton(
        color: Colors.transparent,
        onPressed: () {},
        child: Column(
          children: <Widget>[
            // Spacer(),
            const SizedBox(
              height: 15,
            ),
            Image(
              image: AssetImage(svgSrc),
              height: 90,
              width: 90,
            ),
            // Spacer(),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
