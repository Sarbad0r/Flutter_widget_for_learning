import 'package:flutter/material.dart';

class ExpansionPanelListSet extends StatefulWidget {
  ExpansionPanelListSet({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelListSet> createState() => _ExpansionPanelListSetState();
}

class _ExpansionPanelListSetState extends State<ExpansionPanelListSet> {
  List<bool> isEx = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      //it is like listview, has and index and isExpanded
      animationDuration: const Duration(milliseconds: 700),
      expansionCallback: (index, isExpanded) => setState(() {
        isEx[index] = !isEx[index];
        //if in list of bool index is false set true orElse => false
      }),
      children: [
        //here the child of expansionPanelList
        ///
        ExpansionPanel(
            headerBuilder: (context, isOpen) {
              return const Text("Hello");
            },
            body: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Короче инамхели"),
                Expanded(child: Image.asset('assets/image1.jpg'))
              ],
            ),
            isExpanded: isEx[0]),

        ///
        ///
        ExpansionPanel(
            headerBuilder: (context, isOpen) {
              return const Text("Привет");
            },
            body: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                          "Короче вот это растение сам не знаю что за растение но хорошое растение "),
                    ],
                  ),
                ),
                Expanded(child: Image.asset('assets/image2.jpg'))
              ],
            ),
            isExpanded: isEx[1]),

        ///
        ///
        ///
        ExpansionPanel(
            isExpanded: isEx[2],
            headerBuilder: ((context, isExpanded) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("First"), Text("Second")],
                )),
            body: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text("Forth "), Text("And Fivth")],
            )),
        ExpansionPanel(
            headerBuilder: (context, isOpne) {
              return Text("Open this shit");
            },
            isExpanded: isEx[3],
            body: Text("Here will be a lot of text"))

        ///
        ///
        ///
      ],
    );
  }
}
