import 'package:flutter/material.dart';

class HealthCategories extends StatefulWidget {
  // const HealthCategories({super.key});
  const HealthCategories({Key? key}) : super(key: key);

  @override
  State<HealthCategories> createState() => _HealthCategoriesState();
}

class _HealthCategoriesState extends State<HealthCategories> {
  @override
  Widget build(BuildContext context) {
    List<CustomIcon> customIcons = [
      CustomIcon(icon: 'asset/images/Hospital.jpg', name: 'Appointment'),
      CustomIcon(icon: 'asset/images/Heart.jpg', name: 'Heart'),
      CustomIcon(icon: 'asset/images/Vac.jpg', name: 'Vaccenation'),
      CustomIcon(icon: 'asset/images/Ultrasonar.jpg', name: 'UltraSonar'),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            Container(
              width: 60,
              height: 60,
              // padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.4),
              ),
              child: Image.asset(customIcons[index].icon),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(customIcons[index].name),
          ],
        );
      }),
    );
  }
}

class CustomIcon {
  final String icon;
  final String name;
  CustomIcon({required this.icon, required this.name});
}
