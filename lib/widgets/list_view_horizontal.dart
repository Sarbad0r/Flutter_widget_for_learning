import 'package:flutter/material.dart';

class ListViewHorizontal extends StatelessWidget {
  const ListViewHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Image> list = [
      Image.asset(
        'assets/image2.jpg',
        height: 200,
      ),
      Image.asset(
        'assets/image1.jpg',
        height: 200,
      ),
    ];

    ///Its a listview with horizontal view
    ///if we dont give him height for container with more than picture height
    ///we will have a error
    ///thats why always give him container with height
    return InteractiveViewer(
      child: SizedBox(
        height: 250,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return list[index];
            }),
      ),
    );
  }
}
