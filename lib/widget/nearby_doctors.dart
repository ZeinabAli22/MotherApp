import 'package:flutter/material.dart';

class NearbyDoctors extends StatefulWidget {
  const NearbyDoctors({super.key});

  @override
  State<NearbyDoctors> createState() => _NearbyDoctorsState();
}

class _NearbyDoctorsState extends State<NearbyDoctors> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(nearbyDoctors.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(nearbyDoctors[index].profile),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nearbyDoctors[index].name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(nearbyDoctors[index].position),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_outlined,
                      color: Colors.yellow[700],
                      size: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4, right: 6),
                      child: Text(
                        nearbyDoctors[index].averageReview.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text('${nearbyDoctors[index].totalReview} Reviews')
                  ],
                )
              ],
            ),
          ],
        ),
      );
    }));
  }
}

class DoctorModel {
  final String name;
  final String position;
  final int averageReview;
  final int totalReview;
  final String profile;
  DoctorModel(
      {required this.name,
      required this.position,
      required this.averageReview,
      required this.totalReview,
      required this.profile});
}

List<DoctorModel> nearbyDoctors = [
  DoctorModel(
      name: 'Dr.Magdy Mohamed',
      position: 'General Practitioner',
      averageReview: 4,
      totalReview: 100,
      profile: 'asset/images/Doctor1.png'),
  DoctorModel(
      name: 'Mohamed Youssef',
      position: 'Dental Specialist',
      averageReview: 3,
      totalReview: 195,
      profile: 'asset/images/Doctor6.jpg'),
  DoctorModel(
      name: 'Dr.Malak Ahmed',
      position: 'Paediatrician Specialist',
      averageReview: 5,
      totalReview: 200,
      profile: 'asset/images/Doctor3.jpg')
];
