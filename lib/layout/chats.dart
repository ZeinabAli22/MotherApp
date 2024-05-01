// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.grey[200],
            ),
            padding: const EdgeInsets.all(10),
            child: const Row(
              children: [
                Icon(Icons.search_rounded),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Search',
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 60,
                  child: const Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/15/12/11/1512110aa5ba75d49f9df7911b119bf2.jpg'),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Mamy Malak',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 60,
                  child: const Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/736x/79/e6/56/79e6569c627dec8a8a9ef076d2042aa9.jpg'),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Mamy Aliy',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 60,
                  child: const Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/736x/c8/59/bf/c859bf892f9711c49af25415167c3835.jpg'),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Mera Mamy',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 60,
                  child: const Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/1c/1e/fe/1c1efe942dad479308387a79526fa50e.jpg'),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Mony Mom',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 60,
                  child: const Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/98/12/40/981240af032e9d8ce3d96b4443006633.jpg'),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Nour Nono',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 60,
                  child: const Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/fa/e0/fb/fae0fb05f06909d39d9752213f0561d2.jpg'),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Rody Radrody',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 60,
                  child: const Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/94/36/3b/94363ba32c6cd31ce8bf059a6898e231.jpg'),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Art Maleka',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/15/12/11/1512110aa5ba75d49f9df7911b119bf2.jpg'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Mamy Mony',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const Text('طب تعرفي خافض للحراره احسن؟'),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const Text('2:00 pm'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/89/da/4c/89da4c1f4c49ebf3efe49f4dffd8d51b.jpg'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Twin Mom',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const Text('طب تعرفي خافض للحراره احسن؟'),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const Text('2:00 pm'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/d9/55/fa/d955face26e40d4ef1551f90d309ca9a.jpg'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Gamila Ahmed',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const Text('طب تعرفي خافض للحراره احسن؟'),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const Text('2:00 pm'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/14/fb/55/14fb5519e0cb15927bcead6a76886bdd.jpg'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Amira Ahmed',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const Text('طب تعرفي خافض للحراره احسن؟'),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const Text('2:00 pm'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/a5/d9/a5/a5d9a58a7bfc51d304761eac0ca9f702.jpg'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Mamy Aliey',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const Text('طب تعرفي خافض للحراره احسن؟'),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const Text('2:00 pm'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/736x/33/be/96/33be965cfd9289d75abb3d9dbcd9d0cc.jpg'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Princess',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const Text('طب تعرفي خافض للحراره احسن؟'),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const Text('2:00 pm'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/70/ec/0a/70ec0acd2c93815e92a6f90e016d1e5b.jpg'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Boss Baby',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const Text('طب تعرفي خافض للحراره احسن؟'),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const Text('2:00 pm'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/736x/03/35/b7/0335b75c5803cd460131af78cba9d7dd.jpg'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Merhan Mom',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const Text('طب تعرفي خافض للحراره احسن؟'),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const Text('2:00 pm'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/736x/ee/3e/61/ee3e617bd0be12e783fd6835f12547bf.jpg'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Om Hamza',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const Text('طب تعرفي خافض للحراره احسن؟'),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const Text('2:00 pm'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
