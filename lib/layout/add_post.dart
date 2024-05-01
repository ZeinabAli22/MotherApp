import 'package:flutter/material.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     TextButton(onPressed: () {}, child: Text('Post')),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
                        'Public',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(height: 1.4),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'what is on your mind ...',
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
