import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EntertainScreen extends StatefulWidget {
  const EntertainScreen({super.key});

  @override
  State<EntertainScreen> createState() => _EntertainScreenState();
}

class _EntertainScreenState extends State<EntertainScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blue[200],
          appBar: AppBar(
            backgroundColor: Colors.blue[200],
            elevation: 0.0,
            title: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //name of theprofile.
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello,',
                            style: GoogleFonts.poppins(
                                color: Colors.blue[900],
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Malek',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue[900]),
                          )
                        ],
                      ),
                      //profile picture
                      const CircleAvatar(
                        radius: 25.0,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/c4/60/df/c460df55349b39d267199699b698598a.jpg'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: Stack(
            children: [
              Container(
                height: size.height * .45,
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            icon: SvgPicture.asset('asset/images/search.svg'),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Categories',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[800]),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: .85,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                          children: [
                            InkWell(
                              child: const GridIteam(
                                  title: 'Stories',
                                  img: 'asset/images/image 8.png'),
                              onTap: () {
                                Navigator.pushNamed(context, 'storie_screen');
                              },
                            ),
                            InkWell(
                              child: const GridIteam(
                                  title: 'Games',
                                  img: 'asset/images/image 9.png'),
                              onTap: () {
                                Navigator.pushNamed(context, 'games');
                              },
                            ),
                            InkWell(
                              child: const GridIteam(
                                  title: 'Videos',
                                  img: 'asset/images/image 10.png'),
                              onTap: () {
                                Navigator.pushNamed(context, 'homescreenboy');
                              },
                            ),
                            InkWell(
                              child: const GridIteam(
                                  title: 'AI-Engine',
                                  img: 'asset/images/image 884.png'),
                              onTap: () {
                                Navigator.pushNamed(context, 'homescreenboy');
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: CurvedNavigationBar(
              backgroundColor: Colors.blueAccent,
              animationDuration: const Duration(milliseconds: 300),
              onTap: (index) {
                // print(index);
              },
              buttonBackgroundColor: Colors.white,
              items: const [
                CurvedNavigationBarItem(
                  child: Icon(Icons.home_rounded),
                  label: 'Home',
                ),
                CurvedNavigationBarItem(
                  child: Icon(Icons.play_circle),
                  label: 'Play',
                ),
                CurvedNavigationBarItem(
                  child: Icon(Icons.person),
                  label: 'Profile',
                ),
              ])),
    );
  }
}

class GridIteam extends StatelessWidget {
  final String title;
  final String img;
  const GridIteam({super.key, required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10)),
        boxShadow: const [
          BoxShadow(
              offset: Offset(0.8, 0.8),
              color: Colors.white,
              blurRadius: 17,
              spreadRadius: -23),
        ],
        border: Border.all(color: Colors.indigo, width: 1.5),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage(img),
              width: 90,
              height: 90,
              fit: BoxFit.contain,
            ),
            // const SizedBox(
            //   height: 8,
            // ),
            Text(
              title,
              style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
          ],
        ),
      ),
    );
  }
}
