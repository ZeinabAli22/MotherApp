import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:proj_app/components/category_ent.dart';
// import 'package:proj_app/pages/stories_screen.dart';
// import 'package:proj_app/widget/grid_item.dart';

// ignore: must_be_immutable
class EnterScreenB extends StatelessWidget {
  // const EnterScreenB({super.key});
  int selectedIndex = 0;

  EnterScreenB({super.key});

  Widget getCategories(int index) {
    return GestureDetector(
      onTap: () {
        selectedIndex = index;
      },
      child: Container(
        margin: const EdgeInsets.only(top: 2, bottom: 2, right: 20),
        width: 120,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedIndex == index ? Colors.indigo : Colors.transparent,
            width: 1.5,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFE7EEF8),
              blurRadius: 1,
              offset: Offset(1.5, 1.5),
            ),
          ],
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(30)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Categories',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800]),
                ),
                const SizedBox(
                  height: 20,
                ),
                //iteams
                // StaggeredGrid.count(
                //   mainAxisSpacing: 20,
                //   crossAxisSpacing: 20,
                //   crossAxisCount: 2,
                //   children: categoriesGrid.asMap().entries.map((MapEntry map) {
                //     int index = map.key;
                //     return GestureDetector(
                //       onTap: () {
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //               builder: (context) =>
                //                   StoriesScreen(categoriesGrid[index]),
                //             ));
                //       },
                //       // child: GridItems(index),
                //     );
                //   }).toList(),
                // ),
                //iteams
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: <Widget>[
                      InkWell(
                        child: const GridItems(
                          title: 'Stories',
                          img: 'asset/images/image 8.png',
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, 'homescreenboy');
                        },
                      ),

                      //2nd Category
                      InkWell(
                        child: const GridItems(
                          title: 'Games',
                          img: 'asset/images/image 9.png',
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, 'homescreenboy');
                        },
                      ),
                      //3rd Category
                      InkWell(
                        child: const GridItems(
                          title: 'Videos',
                          img: 'asset/images/image 10.png',
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, 'homescreenboy');
                        },
                      ),
                      //4th Category
                      InkWell(
                        child: const GridItems(
                          title: 'AI-Engine',
                          img: 'asset/images/image 884.png',
                        ),
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
            ]));
  }
}

class GridItems extends StatelessWidget {
  final String title;
  final String img;
  const GridItems({super.key, required this.title, required this.img});

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
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image(
            image: AssetImage(img),
            width: 100,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          ),
        ],
      ),
    );
  }
}
