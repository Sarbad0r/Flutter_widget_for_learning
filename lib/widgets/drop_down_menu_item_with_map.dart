import 'package:flutter/material.dart';

class DropDownMenuItemWithMap extends StatefulWidget {
  const DropDownMenuItemWithMap({Key? key}) : super(key: key);

  @override
  State<DropDownMenuItemWithMap> createState() =>
      _DropDownMenuItemWithMapState();
}

class _DropDownMenuItemWithMapState extends State<DropDownMenuItemWithMap> {
  Map<String, int> map = {'avaz': 0, "me": 1, "you": 2};
  String mapString = 'avaz';
  int mapNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DropdownButton(
            items: map
                .map((key, value) {
                  return MapEntry(
                      key,
                      DropdownMenuItem(
                          value: key,
                          onTap: () {
                            setState(() {
                              mapNumber = value;
                            });
                          },
                          child: Text(key)));
                })
                .values
                .toList(),
            value: mapString,
            onChanged: (val) {
              setState(() {
                mapString = val.toString();
              });
            }),
        Text("$mapNumber"),
        const SizedBox(
          width: 20,
        ),
        const Expanded(child: Text("Drop Down button with map"))
      ],
    );
  }
}
