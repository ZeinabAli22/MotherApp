import 'package:flutter/material.dart';

class UpcomingCard extends StatelessWidget {
  const UpcomingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.indigo[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('asset/images/Doctors.png'),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  'Dr.John Magdy',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const Text(
                'Paediatrician Specialist',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      size: 18,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 14.0, left: 6),
                      child: Text(
                        'Today',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(
                        Icons.timer_sharp,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '14:00 - 15:30 AM',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
