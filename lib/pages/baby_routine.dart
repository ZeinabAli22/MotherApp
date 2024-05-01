import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BabyRoutineScreen extends StatefulWidget {
  const BabyRoutineScreen({super.key});

  @override
  State<BabyRoutineScreen> createState() => _BabyRoutineScreenState();
}

class _BabyRoutineScreenState extends State<BabyRoutineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        elevation: 0.0,
      ),
      //Body
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // IconButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, 'medical_history');
                //   },
                //   icon: const Icon(
                //     Icons.arrow_back,
                //     color: Colors.white,
                //   ),
                // ),
              ],
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Baby',
                  style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Routine',
                  style: GoogleFonts.inter(color: Colors.white, fontSize: 35.0),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(75.0),
                topRight: Radius.circular(75),
              ),
            ),
            child: ListView(
              primary: false,
              padding: const EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: [
                        //Card for the routine
                        _buildRoutineCard('asset/images/nap.png', 'Naps',
                            'Total:', 'Time:', 'Awake:', '2', '1h30m', '3h10m'),
                        const SizedBox(height: 15),
                        _buildRoutineCard('asset/images/Food.png', 'Food',
                            'Bottles:', 'Meals:', 'Last:', '180ml', '0', '40m'),
                        const SizedBox(
                          height: 15,
                        ),
                        _buildRoutineCard('asset/images/Nappe.png', 'Nappies',
                            'Wet:', 'Dirty:', 'Last:', '3', '2', '40m'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }

  //Class for the list of the routine
  Widget _buildRoutineCard(String imagePath, String cardTitle, String info,
      String info2, String info3, String unit, String unit2, String unit3) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 13.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(30),
      ),
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imagePath),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            cardTitle,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 220,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                info,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 130,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 1),
                                      child: Text(
                                        info2,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Text(
                                      info3,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 200,
                          margin: const EdgeInsets.only(left: 3, right: 11),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  unit,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                              const Spacer(
                                flex: 52,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  unit2,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                              const Spacer(
                                flex: 47,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Text(
                                  unit3,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
