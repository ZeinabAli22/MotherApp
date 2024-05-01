import 'package:flutter/material.dart';
import 'package:proj_app/layout/posts.dart';
// import 'package:proj_app/layout/posts_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Posts(),
    );
  }
}
