import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  CheckBoxWidget({Key? key}) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  List<String> name = ['avaz', 'me', 'my'];
  List<bool> listOfBool = [];
  List<String> getName = [];

  @override
  void initState() {
    // TODO: implement initState
    listOfBool = List<bool>.filled(name.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Checkbox(
                  value: listOfBool[index],
                  onChanged: (val) {
                    setState(() {
                      listOfBool[index] = !listOfBool[index];
                    });
                    if (listOfBool[index] == true) {
                      getName.add(name[index]);
                      print(getName);
                    } else {
                      getName.remove(name[index]);
                      print(getName);
                    }
                  }),
              Text(name[index])
            ],
          );
        });
  }
}
