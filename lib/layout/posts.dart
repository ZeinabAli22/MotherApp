import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 10.0,
            margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      //UserName and Circle Avatar
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/15/12/11/1512110aa5ba75d49f9df7911b119bf2.jpg'),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Mamy Malak',
                              style: TextStyle(
                                  height: 1.4,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            Text(
                              'Januray 22, 2024 at 11:00 pm',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(height: 1.4),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      //Delete Button
                      IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => Dialog(
                                child: ListView(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  shrinkWrap: true,
                                  children: [
                                    'Delete',
                                  ]
                                      .map(
                                        (e) => InkWell(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 12, horizontal: 16),
                                            child: Text(e),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.more_vert_sharp,
                            size: 16.0,
                          )),
                    ],
                  ),
                  //Posts Containt
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Container(
                      width: double.infinity,
                    ),
                  ),
                  const Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        height: 1.3),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  // //Like Button
                                  const Icon(
                                    Icons.favorite_border_rounded,
                                    size: 16,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '120',
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                        //Comment Button
                        Expanded(
                          child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  // //Comment Button
                                  const Icon(
                                    Icons.mode_comment_rounded,
                                    size: 16,
                                    color: Colors.amber,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '120 Comment',
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      width: double.infinity,
                      height: 1.0,
                      color: Colors.grey[300],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 15,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/564x/15/12/11/1512110aa5ba75d49f9df7911b119bf2.jpg'),
                              ),
                              const SizedBox(width: 15),
                              Text(
                                'write a comment ....',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              // //Like Button
                              const Icon(
                                Icons.favorite_border_rounded,
                                size: 16,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Likes',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          //Second Post With Image
          const SizedBox(
            height: 10,
          ),

          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 10.0,
            margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      //UserName and Circle Avatar
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/70/ec/0a/70ec0acd2c93815e92a6f90e016d1e5b.jpg'),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Mamy Malak',
                              style: TextStyle(
                                  height: 1.4,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            Text(
                              'Januray 22, 2024 at 11:00 pm',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(height: 1.4),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      //Delete Button
                      IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => Dialog(
                                child: ListView(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  shrinkWrap: true,
                                  children: [
                                    'Delete',
                                  ]
                                      .map(
                                        (e) => InkWell(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 12, horizontal: 16),
                                            child: Text(e),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.more_vert_sharp,
                            size: 16.0,
                          )),
                    ],
                  ),
                  //Posts Containt
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Container(
                      width: double.infinity,
                    ),
                  ),
                  const Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        height: 1.3),
                  ),

                  //Image Post
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Container(
                      height: 170,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://i.pinimg.com/564x/1f/2a/63/1f2a63f8b09c22e53a5d118c3779738e.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  // //Like Button
                                  const Icon(
                                    Icons.favorite_border_rounded,
                                    size: 16,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '120',
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                        //Comment Button
                        Expanded(
                          child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  // //Comment Button
                                  const Icon(
                                    Icons.mode_comment_rounded,
                                    size: 16,
                                    color: Colors.amber,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '120 Comment',
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      width: double.infinity,
                      height: 1.0,
                      color: Colors.grey[300],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 15,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/564x/70/ec/0a/70ec0acd2c93815e92a6f90e016d1e5b.jpg'),
                              ),
                              const SizedBox(width: 15),
                              Text(
                                'write a comment ....',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              // //Like Button
                              const Icon(
                                Icons.favorite_border_rounded,
                                size: 16,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Likes',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //End of Second Post

          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
