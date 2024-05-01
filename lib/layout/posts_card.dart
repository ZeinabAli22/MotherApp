import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          //Header
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 16,
            ).copyWith(right: 0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/564x/15/12/11/1512110aa5ba75d49f9df7911b119bf2.jpg'),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'username',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ]),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          child: ListView(
                            padding: const EdgeInsets.symmetric(vertical: 16),
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
                    icon: const Icon(Icons.more_vert_sharp)),
              ],
            ),
          ),
          //IMAGE
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
            // child: Image.network(
            //   'https://i.pinimg.com/564x/94/36/3b/94363ba32c6cd31ce8bf059a6898e231.jpg',
            //   fit: BoxFit.cover,
            // ),
            child: const Text(
                'Hey Momies Can you please help me in making my baby Night schuduling '),
          ),

          //LIKE COMMENT SECTION

          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.comment_outlined),
              ),
              //SHARE
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send_outlined),
              ),
              //SAVE
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_outline),
                  ),
                ),
              ),
            ],
          ),
          //DESCRIPTION AND NUMBER OF COMMENTS
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                  child: Text(
                    '1,233 likes',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 8),
                  child: RichText(
                    text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: 'username',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                '  Hey this is some description to be replaced',
                          ),
                        ]),
                  ),
                ),
                //COMMENT SECTION
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: const Text(
                      'View all 2,000 comments',
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: const Text(
                    '22/11/2024',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
