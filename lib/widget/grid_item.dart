import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj_app/components/category_ent.dart';

class GridItems extends StatelessWidget {
  // const GridItems({super.key});
  final int index;
  const GridItems(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              blurRadius: 1,
              offset: Offset(0.8, 0.8),
            ),
          ],
          color: Colors.white,
          border: Border.all(color: Colors.indigo, width: 1.5),
          borderRadius: index == 0 || index % 3 == 0
              ? const BorderRadius.only(
                  // topLeft: Radius.circular(30),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10))
              : const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
      child: Column(
        children: [
          Image(
            image: AssetImage("asset/images/${categoriesGrid[index].imageUrl}"),
            width: 100,
            height: index % 3 == 0 ? 80 : 200,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            categoriesGrid[index].title,
            style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          )
        ],
      ),
    );
  }
}
