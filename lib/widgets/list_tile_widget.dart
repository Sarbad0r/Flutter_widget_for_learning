import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({Key? key}) : super(key: key);

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  List<Icon> icons = [
    Icon(Icons.admin_panel_settings),
    Icon(Icons.person),
    Icon(Icons.man)
  ];

  List<bool> bools = [];
  List<Color> colors = [];
  List<String> names = [];

  @override
  void initState() {
    bools = List<bool>.filled(icons.length, false);
    colors = [Colors.amber, Colors.green, Colors.blue];
    names = List.filled(icons.length, "list");
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: icons.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: icons[index],
            title: Text("${names[index]} ${index + 1}"),
            subtitle: Text("text"),
            trailing: Icon(Icons.menu),
            isThreeLine: true,
            dense: true,
            selected: bools[index],
            onTap: () {
              setState(() {
                bools[index] = !bools[index];
              });
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("${names[index]}${index + 1}"),
                duration: const Duration(milliseconds: 500),
              ));
            },
            tileColor: colors[index],
          );
        });
  }
}
