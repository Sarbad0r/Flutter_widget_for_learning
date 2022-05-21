import 'package:flutter/material.dart';

class DropDownMenuItem extends StatefulWidget {
  const DropDownMenuItem({Key? key}) : super(key: key);

  @override
  State<DropDownMenuItem> createState() => _DropDownMenuItemState();
}

class _DropDownMenuItemState extends State<DropDownMenuItem> {
  List<String> dropDowButtonItems = ['Avaz', 'Me', 'My', 'Own'];
  String value = 'Avaz';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DropdownButton<String>(
            items: dropDowButtonItems
                .map((e) => DropdownMenuItem<String>(
                      child: Text(e),
                      value: e,
                    ))
                .toList(),
            value: value,
            onChanged: (val) {
              setState(() {
                value = val.toString();
              });
            }),
        const SizedBox(
          width: 20,
        ),
        const Expanded(child: Text("Drop Down button with list"))
      ],
    );
  }
}
