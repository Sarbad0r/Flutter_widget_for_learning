import 'package:flutter/material.dart';

class HeroPicture extends StatelessWidget {
  const HeroPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Center(
        child: Stack(
          children: [
            Hero(
              tag: 'any',
              child: Image.asset(
                'assets/image1.jpg',
                width: MediaQuery.of(context).size.width,
              ),
            ),
            const Positioned(
              bottom: 0,
              child: const Text(
                "The Picture",
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
