import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor:  Color.fromARGB(255, 42, 124, 19),
          pinned: true,
          // floating: true,
          title: const Text(
            "App Bar",
            style: TextStyle(fontSize: 25),
          ),
          expandedHeight: 200,
          stretch: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              "assets/image2.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
            delegate:
                SliverChildBuilderDelegate(childCount: 40, (context, index) {
          return const Text(
            "Hello",
            style: TextStyle(fontSize: 20),
          );
        }))
      ]),
    );
  }
}
