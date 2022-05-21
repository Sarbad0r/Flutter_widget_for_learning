import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: [
        Stack(
          children: [
            Container(
              width: 200,
              height: 100,
              color: const Color(0xFFE0E0E0),
            ),
          ],
        ),
        Stack(
          children: [
            Container(
              width: 200,
              height: 100,
              color: const Color(0xFFFFF51123),
            ),
          ],
        ),
        Stack(
          children: [
            Container(
              width: 200,
              height: 100,
              color: const Color(0xFFF06292),
            ),
          ],
        ),
        Stack(
          children: [
            Container(
              width: 200,
              height: 100,
              color: const Color(0xFFFFB74D),
            ),
          ],
        ),
        Stack(
          children: [
            Container(
              width: 200,
              height: 100,
              color: const Color(0xFF69F0AE),
            ),
          ],
        ),
        Stack(
          children: [
            Container(
              width: 200,
              height: 100,
              color: const Color(0xFF4CAF50),
            ),
          ],
        ),
        Stack(
          children: [
            Container(
              width: 200,
              height: 100,
              color: const Color(0xFF2979FF),
            ),
          ],
        ),
        Stack(
          children: [
            Container(
              width: 200,
              height: 100,
              color: const Color(0xFF9C27B0),
            ),
          ],
        ),
      ],
    );
  }
}
