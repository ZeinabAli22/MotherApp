import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj_app/widget/health_category.dart';
import 'package:proj_app/widget/nearby_doctors.dart';
import 'package:proj_app/widget/upcoming_card.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({super.key});

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Row(
            children: [
              const CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/564x/c4/60/df/c460df55349b39d267199699b698598a.jpg'),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Hi, Malek',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.indigo[500]),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_rounded,
                  color: Colors.indigo,
                  size: 30,
                )),
          ],
        ),
        //body
        body: ListView(
          padding: const EdgeInsets.all(14),
          children: const [
            //Upcoming Card
            UpcomingCard(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Health Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),

            //Health Category
            HealthCategories(),
            SizedBox(
              height: 30,
            ),
            Text(
              'Nearby Doctors',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(
              height: 15,
            ),
            //Nearby Doctor
            NearbyDoctors(),
          ],
        ));
  }
}
